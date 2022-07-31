import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/push_notification/domain/Repo.dart';
import 'package:fasta/push_notification/domain/entity/NotificationEntity.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class NotificationRepoimpl implements NotificationRepo{
  final ApiClient client;

  NotificationRepoimpl(this.client);


  @override
  ErrorOr<List<NotificationEntity>> getAllNotifications() async{

    try{
      final res = await client.get(Endpoints.notification.getAllNotifications);
      // log(res['meta']);
      // List data = res['data'];
      // for (final x in data){myList.add(NotificationEntity.fromJson(x));}
      return Right((res.data['data'] as List).map((e) => NotificationEntity.fromJson(e)).toList());
    }   catch (e) {
      log(e.toString());
      return Left(AppError(e.toString()));
    }
  }
  
  @override
  ErrorOr<void> markUserRead(int id) async{
    try{
      final res = await client.put(Endpoints.notification.markUserRead(id));
      log('markread ${res['meta']}');
      return const Right(null);

    } catch(e){
          return Left(AppError(e.toString()));
    }
  }
  
  @override
  ErrorOr<int> getUnreadCount() async{
    try{
      final res = await client.get(Endpoints.notification.unreadCount);
      int count = res['data']['count'] as int;
      return Right(count);

    } catch(e){
      return Left(AppError(e.toString()));

    }
  }

}