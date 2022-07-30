part of 'NotificationBloc.dart';

abstract class NotificationEvents{}

class MarkUserReadEvent extends NotificationEvents{
  final int id;

  MarkUserReadEvent(this.id);
}

class GetAllNotificationsEvent extends NotificationEvents{}

class GetUnreadCountEvent extends NotificationEvents{}