class Transaction {
  final String? type, status;
  final String amount, createdAt;
  final int id, userId;

  Transaction({
    this.type,
    this.status,
    required this.amount,
    required this.createdAt,
    required this.id,
    required this.userId,
  });
}

class AllTrasaction{
  final List<Transaction> transactions;
  final double lastPage;

  AllTrasaction(this.transactions, this.lastPage);
}