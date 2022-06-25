class TransactionArg {
  final String status, type, page, limit, order, startDate, endDate;

  TransactionArg({
    required this.status,
    required this.type,
    required this.page,
    required this.limit,
    required this.order,
    required this.startDate,
    required this.endDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'type': type,
      'page': page,
      'limit': limit,
      'order': order,
      'startDate': status,
      'endDate': endDate,
    };
  }
}

class AccountInfo {
  final String accountNumber;
  final String accountName;

  AccountInfo(this.accountNumber, this.accountName);
  factory AccountInfo.fromMap(Map<String, dynamic> map) {
    return AccountInfo(map['accountNumber'], map['accountName']);
  }
}

class BankInfo {
  final String accountNumber;
  final String accountName;

  BankInfo(this.accountNumber, this.accountName);
  factory BankInfo.fromMap(Map<String, dynamic> map) {
    return BankInfo(map['code'], map['name']);
  }

  @override
  String toString() =>
      '${{accountName: 'accountName', accountNumber: 'accountNumber'}}';
}

class ConfirmWithdrawal {
  final String otpId;
  final String otpCode;
  final String? userId;
  final String amount;
  final String bankCode;
  final String accountNumber;

  ConfirmWithdrawal(
      {required this.otpId,
      required this.otpCode,
      required this.amount,
      required this.bankCode,
      required this.accountNumber,
      this.userId});
  factory ConfirmWithdrawal.fromMap(Map<String, dynamic> map) {
    return ConfirmWithdrawal(
      otpId: map['otpId'],
      otpCode: map['otpCode'],
      amount: map['amount'],
      bankCode: map['bankCode'],
      accountNumber: map['accountNumber'],
    );
  }
  ConfirmWithdrawal copyWith(String otpCode) {
    return ConfirmWithdrawal(
        otpId: otpId,
        otpCode: otpCode,
        amount: amount,
        bankCode: bankCode,
        accountNumber: accountNumber);
  }

  Map<String, dynamic> toMap() {
    return {
      'otpId': otpId,
      'otpCode': otpCode,
      'amount': amount,
      'bankCode': bankCode,
      'accountNumber': accountNumber,
    };
  }

  @override
  toString() => '${toMap()}';
}
