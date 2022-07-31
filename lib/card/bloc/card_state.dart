part of 'card_bloc.dart';

class CardState {
  final AppError error;
  final AppState appState;
  final List<CardModel> cards;

  CardState(this.error, this.appState, this.cards);
  CardState copyWith(
      {AppError? error, AppState? appState, List<CardModel>? cards}) {
    return CardState(
        error ?? this.error, appState ?? this.appState, cards ?? this.cards);
  }
}
