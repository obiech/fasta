import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/wallet/domain/entity/paystack.dart';
import 'package:fasta/wallet/domain/entity/transcation.dart';
import 'package:fasta/wallet/repository/args.dart';
import 'package:fasta/wallet/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paystack_event.dart';
part 'paystack_state.dart';
part 'paystack_bloc.freezed.dart';

class PaystackBloc extends Bloc<PaystackEvent, PaystackState> {
  final WalletRepository _repo;
  PaystackBloc(this._repo) : super(PaystackState.initial()) {
    on<_Balance>(_onBalance);
    on<_GetDepositLink>(_onGetDepositLink);
    on<_AllTransactions>(_onAllTransactions);
    on<_TransactionDetail>(_onTransactionDetail);
    on<_GetDepositTransaction>(_onGetDepositTransaction);
    on<_GetWithdrawTransaction>(_onGetWithdrawTransaction);
    on<_GetAllEarnings>(_onGetAllEarnings);
    on<_GetTotalEarnings>(_onGetTotalEarnings);
    on<_ResolveAccountNumber>(_onResolveAccountNumber);
    on<_InitiateWithdrawal>(_onInitiateWithdrawal);
    on<_ConfirmWithdrawalOtp>(_onConfirmWithdrawalOtp);
    on<_GetBankList>(_onGetBankList);
    on<_EnterOtpAndBankCode>(_onEnterOtpAndBankCode);
  }

  void _onBalance(_Balance event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.balance();
    res.fold((l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(appState: AppState.success, balance: r)));
  }

  void _onGetDepositLink(
      _GetDepositLink event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getDepositLink(event.amount);
    res.fold((l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(appState: AppState.success, payStack: r)));
  }

  void _onAllTransactions(
      _AllTransactions event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.allTransactions(event.arg);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(
            state.copyWith(appState: AppState.success, allTransaction: r)));
  }

  void _onTransactionDetail(
      _TransactionDetail event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.transactionDetail(event.transactionId);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(
            state.copyWith(appState: AppState.success, transactionDetail: r)));
  }

  void _onGetDepositTransaction(
      _GetDepositTransaction event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getDepositTransaction(event.arg);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(
            state.copyWith(appState: AppState.success, allTransaction: r)));
  }

  void _onGetWithdrawTransaction(
      _GetWithdrawTransaction event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getWithdrawTransaction(event.arg);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(
            state.copyWith(appState: AppState.success, allTransaction: r)));
  }

  void _onGetAllEarnings(
      _GetAllEarnings event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getAllEarnings(event.arg);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(
            state.copyWith(appState: AppState.success, allTransaction: r)));
  }

  void _onGetTotalEarnings(
    _GetTotalEarnings event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getTotalEarnings(event.period);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) =>
            emit(state.copyWith(appState: AppState.success, totalEarning: r)));
  }

  void _onResolveAccountNumber(
    _ResolveAccountNumber event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(appState: AppState.loading));
    final res =
        await _repo.resolveAccountNumber(event.accountNumber, event.bankCode);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) =>
            emit(state.copyWith(appState: AppState.success, accountInfo: r)));
  }

  void _onInitiateWithdrawal(
    _InitiateWithdrawal event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.initialWithdrawal();
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(
            appState: AppState.success, otpId: r, amount: event.amount)));
  }

  void _onConfirmWithdrawalOtp(
    _ConfirmWithdrawalOtp event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.confirmWithdrawalOtp(ConfirmWithdrawal(
        otpId: state.otpId!,
        otpCode: '999999',
        // otpCode: state.otpCode??'999999',
        amount: state.amount!,
        bankCode: state.bankCode!,
        userId: state.userId!,
        accountNumber: state.accountInfo!.accountNumber));
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(
              appState: AppState.success,
            )));
  }

  void _onGetBankList(
    _GetBankList event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getBankList();
    res.fold((l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(appState: AppState.success, bankList: r)));
  }

  void _onEnterOtpAndBankCode(
    _EnterOtpAndBankCode event,
    Emitter<PaystackState> emit,
  ) async {
    emit(state.copyWith(
        otpCode: event.otp,
        bankCode: event.bankCode,
        userId: event.userId,
        appState: AppState.loading));
  }
}
