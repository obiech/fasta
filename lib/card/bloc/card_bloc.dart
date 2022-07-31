import 'dart:async';

import 'package:fasta/card/domain/models/card_model.dart';
import 'package:fasta/card/domain/repo.dart';
import 'package:fasta/card/repository/repo.dart';
import 'package:fasta/core/app_state.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  final CardRepository _repo;

  CardBloc(this._repo)
      : super(CardState(AppError.empty(), AppState.waiting, [])) {
    on<AddCardEvent>(_addcard);
    on<GetAllCards>(_getAllCards);
  }

  Future<void> _addcard(AddCardEvent event, Emitter<CardState> emit) async {
    // call to repo abstract
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.addcard(
        cardNumber: event.cardNumber,
        cardname: event.cardname,
        cvv: event.cvv,
        expiryMonth: event.expiryMonth,
        expiryYear: event.expiryYear);
    res.fold(
        (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
        (r) => emit(state.copyWith(
              appState: AppState.success,
            )));
  }

  Future<void> _getAllCards(GetAllCards event, Emitter<CardState> emit) async {
    emit(state.copyWith(appState: AppState.loading));
    final res = await _repo.getAllCards();

    res.fold(
      (l) => emit(state.copyWith(appState: AppState.failed, error: l)),
      (r) => emit(state.copyWith(appState: AppState.success, cards: r)),
    );
  }
}
