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
    AccountInfo? accountInfo,
    String? otpId,
    String? amount,
    String? otpCode,
    String? bankCode,
    String? userId,
    @Default([]) List<BankInfo> bankList,
  }) = _PaystackState;
  factory PaystackState.initial() => const PaystackState(
        appState: AppState.waiting,
        totalEarning: '0',
      );
}
