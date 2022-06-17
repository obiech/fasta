import 'package:bloc/bloc.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/wallet/domain/entity/error.dart';
import 'package:fasta/wallet/domain/entity/transaction.dart';
import 'package:fasta/wallet/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paystack_event.dart';
part 'paystack_state.dart';
part 'paystack_bloc.freezed.dart';

class PaystackBloc extends Bloc<PaystackEvent, PaystackState> {
  final WalletRepository _repo;
  PaystackBloc(this._repo) : super(PaystackState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_Verify>(_onVerify);
  }
  void _onInitialize(_Initialize event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.initilize(email: event.email, amount: event.amount);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) =>
            emit(state.copyWith(appState: AppState.success, transaction: r)));
  }

  void _onVerify(_Verify event, Emitter<PaystackState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.verifyTransaction(reference: event.reference);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(
              appState: AppState.success,
            )));
  }
}
