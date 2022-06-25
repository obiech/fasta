part of 'paystack_bloc.dart';

@freezed
class PaystackEvent with _$PaystackEvent {
  const factory PaystackEvent.started() = _Started;
  const factory PaystackEvent.balance() = _Balance;
  const factory PaystackEvent.getDepositLink(String amount) = _GetDepositLink;
  const factory PaystackEvent.allTransactions(TransactionArg arg) =
      _AllTransactions;
  const factory PaystackEvent.transactionDetail(String transactionId) =
      _TransactionDetail;
  const factory PaystackEvent.getDepositTransaction(TransactionArg arg) =
      _GetDepositTransaction;
  const factory PaystackEvent.getWithdrawTransaction(TransactionArg arg) =
      _GetWithdrawTransaction;
 const factory PaystackEvent.getBankList() =
      _GetBankList;
  const factory PaystackEvent.getAllEarnings(TransactionArg arg) =
      _GetAllEarnings;
  const factory PaystackEvent.getTotalEarnings(String period) =
      _GetTotalEarnings;
  const factory PaystackEvent.resolveAccountNumber(String accountNumber, String bankCode) =
      _ResolveAccountNumber;
  const factory PaystackEvent.initiateWithdrawal([String? amount]) =
      _InitiateWithdrawal;
  const factory PaystackEvent.confirmWithdrawalOtp()  =
      _ConfirmWithdrawalOtp;
  const factory PaystackEvent.enterOtpAndBankCode(String bankCode, String otp, String userId)  =
      _EnterOtpAndBankCode;
}
