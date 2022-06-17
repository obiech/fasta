part of 'paystack_bloc.dart';

@freezed
class PaystackState with _$PaystackState {
  const factory PaystackState({
    PayStackError? error,
    Transaction? transaction,
    required AppState appState,
  }) = _PaystackState;
  factory PaystackState.initial() =>
      const PaystackState(appState: AppState.waiting);
}
