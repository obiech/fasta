class DeliveryInvitation {
  final int id, deliveryId;
  final String form, to, items, paymentMethod, state, weight, estTime;
  final bool priority;

  DeliveryInvitation({
    required this.id,
    required this.deliveryId,
    required this.form,
    required this.to,
    required this.items,
    required this.paymentMethod,
    required this.state,
    required this.weight,
    required this.estTime,
    required this.priority,
  });
}
