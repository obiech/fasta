import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/wallet/domain/entity/error.dart';
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
}
