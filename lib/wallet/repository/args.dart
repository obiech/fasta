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
