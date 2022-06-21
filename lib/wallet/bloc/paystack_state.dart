part of 'paystack_bloc.dart';

@freezed
class PaystackState with _$PaystackState {
  const factory PaystackState({
    AppError? error,
    PayStack? payStack,
    required AppState appState,
    @Default([]) List<Transaction> allTransaction,
    Transaction? transactionDetail,
    Transaction? balance,
    required String totalEarning,
  }) = _PaystackState;
  factory PaystackState.initial() => const PaystackState(
        appState: AppState.waiting,
        totalEarning: '0',
      );
}
