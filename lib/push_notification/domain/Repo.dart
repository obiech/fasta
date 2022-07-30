import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/infrastruture/dio_helper.dart';
import 'package:fasta/push_notification/Bloc/NotificationBloc.dart';
import 'package:fasta/push_notification/domain/entity/NotificationEntity.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

abstract class NotificationRepo{
 
  ErrorOr<List<dynamic>> getAllNotifications();
  ErrorOr<void> markUserRead(int id);
  ErrorOr<int> getUnreadCount();
}