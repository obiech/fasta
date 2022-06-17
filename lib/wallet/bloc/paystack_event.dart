part of 'paystack_bloc.dart';

@freezed
class PaystackEvent with _$PaystackEvent {
  const factory PaystackEvent.started() = _Started;
  const factory PaystackEvent.initialize(
      {required String email, required String amount}) = _Initialize;
  const factory PaystackEvent.verify({required String reference}) = _Verify;
}
