part of 'NotificationBloc.dart';

class NotificationState{
  final AppError error;
  final AppState appState;
  final List<NotificationEntity> entityList;
  final int unreadCount;

  NotificationState(this.error, this.appState, this.entityList, this.unreadCount);

  NotificationState copyWith({AppError? error, AppState? appState, List<NotificationEntity>? entityList, int? unreadCount}){
    return NotificationState(error?? this.error, appState?? this.appState, entityList?? this.entityList, unreadCount?? this.unreadCount);
  }

}