part of 'CardBloc.dart';

 class CardState {
  final AppError error;
  final AppState appState;
  final List<cardmodel> cards;

  CardState(this.error, this.appState, this.cards);
  CardState copyWith({AppError? error, AppState? appState, List<cardmodel>? cards}){
    return CardState(error?? this.error, appState?? this.appState, cards?? this.cards);
  }
  
  }
