class NotificationEntity{
  final int id , userId;
  final String title, message, type;
  final bool isRead ;

  NotificationEntity(this.id, this.userId, this.title, this.message, this.type, this.isRead);

  NotificationEntity.fromJson(Map<String,dynamic> data): 
    id = data['id'],
    userId = data['userId'],
    title = data['title'],
    message = data['message'],
    type = data['type'],
    isRead = data['isRead'] as bool;

}