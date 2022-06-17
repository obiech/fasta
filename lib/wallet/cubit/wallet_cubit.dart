import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(WalletState.initial());

  void deductWallet(int amountUsed) {
    emit(state.copyWith(
        amount: state.amount - amountUsed,
        histroy: state.histroy
          ..insert(0,
              'You Paid NGN $amountUsed.00  at ${TimeOfDay.now().hour}:${TimeOfDay.now().minute}')));
  }

  void creditWallet(int amountCredited) {
    emit(state.copyWith(
        amount: state.amount + amountCredited,
        histroy: state.histroy
          ..insert(0,
              'You Credited your account With NGN $amountCredited.00 at ${TimeOfDay.now().hour}:${TimeOfDay.now().minute}')));
  }

  void removeHistory(int index) {
    emit(state.copyWith(histroy: state.histroy..removeAt(index)));
  }
}
