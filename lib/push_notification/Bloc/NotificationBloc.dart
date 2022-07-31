import 'dart:async';

import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/push_notification/domain/Repo.dart';
import 'package:fasta/push_notification/domain/entity/NotificationEntity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'BlocState.dart';
part 'BlocEvents.dart';

class NotificationBloc extends Bloc<NotificationEvents, NotificationState>{
  NotificationRepo repo;

  NotificationBloc(this.repo) : super(NotificationState(AppError.empty(), AppState.waiting, [], 0)){
    on<GetAllNotificationsEvent>(getAllNotifications);
    on<MarkUserReadEvent>(markUserRead);
    on<GetUnreadCountEvent>(getUnreadCount);
  }

  Future getAllNotifications(GetAllNotificationsEvent event, Emitter<NotificationState> emit) async{
        List<NotificationEntity> myList= [];
             
              final res = await repo.getAllNotifications();
emit (state.copyWith(appState: AppState.loading));
            res.fold((l) => emit (state.copyWith( appState: AppState.failed,error: l)),
               (r) {
          for (final x in r){myList.add(x);}
            emit (state.copyWith(appState: AppState.success, entityList: myList)
               );
          }
    );
  }

  Future<void> markUserRead(MarkUserReadEvent event, Emitter<NotificationState> emit) async {
    final res = await repo.markUserRead(event.id);
    
  }

  Future getUnreadCount(GetUnreadCountEvent event, Emitter<NotificationState> emit) async{
    final res = await repo.getUnreadCount();

    res.fold(
      (l) => emit(state.copyWith(appState: AppState.failed, error: AppError(l.toString()))),

     (r) => emit(state.copyWith(appState: AppState.success, unreadCount: res as int)));
  }
}