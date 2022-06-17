part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  factory WalletState.initial() => WalletState(amount: 0, histroy: []);
  factory WalletState({required int amount, required List<String> histroy}) =
      _WalletState;
}
