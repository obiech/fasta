import 'dart:async';

import 'package:fasta/card/infrastructure/cardmodel.dart';
import 'package:fasta/card/domain/repo.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'blocevents.dart';
part 'blocstate.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
final Cardrepo _repo ;

  CardBloc(this._repo) :super(CardState(AppError.empty(),AppState.waiting, [])){
    on <AddCardEvent>(addcard);
  }


  Future<void> addcard(AddCardEvent event, Emitter<CardState> emit) async {
    // call to repo abstract
    final res = await _repo.addcard(event.cardNumber, event.cardname, event.cvv, event.expiryMonth, event.expiryYear);
    res.fold((l) => emit (state.copyWith(
      appState: AppState.failed,
      error: l
    )), (r) => emit (state.copyWith(
      appState: AppState.success,
      
    )));
  }
}