// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paystack_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaystackEventTearOff {
  const _$PaystackEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Initialize initialize({required String email, required String amount}) {
    return _Initialize(
      email: email,
      amount: amount,
    );
  }

  _Verify verify({required String reference}) {
    return _Verify(
      reference: reference,
    );
  }
}

/// @nodoc
const $PaystackEvent = _$PaystackEventTearOff();

/// @nodoc
mixin _$PaystackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String amount) initialize,
    required TResult Function(String reference) verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Verify value) verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaystackEventCopyWith<$Res> {
  factory $PaystackEventCopyWith(
          PaystackEvent value, $Res Function(PaystackEvent) then) =
      _$PaystackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaystackEventCopyWithImpl<$Res>
    implements $PaystackEventCopyWith<$Res> {
  _$PaystackEventCopyWithImpl(this._value, this._then);

  final PaystackEvent _value;
  // ignore: unused_field
  final $Res Function(PaystackEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PaystackEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PaystackEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String amount) initialize,
    required TResult Function(String reference) verify,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Verify value) verify,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaystackEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({String email, String amount});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res> extends _$PaystackEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? email = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Initialize(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({required this.email, required this.amount});

  @override
  final String email;
  @override
  final String amount;

  @override
  String toString() {
    return 'PaystackEvent.initialize(email: $email, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialize &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String amount) initialize,
    required TResult Function(String reference) verify,
  }) {
    return initialize(email, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
  }) {
    return initialize?.call(email, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(email, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Verify value) verify,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements PaystackEvent {
  const factory _Initialize({required String email, required String amount}) =
      _$_Initialize;

  String get email;
  String get amount;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyCopyWith<$Res> {
  factory _$VerifyCopyWith(_Verify value, $Res Function(_Verify) then) =
      __$VerifyCopyWithImpl<$Res>;
  $Res call({String reference});
}

/// @nodoc
class __$VerifyCopyWithImpl<$Res> extends _$PaystackEventCopyWithImpl<$Res>
    implements _$VerifyCopyWith<$Res> {
  __$VerifyCopyWithImpl(_Verify _value, $Res Function(_Verify) _then)
      : super(_value, (v) => _then(v as _Verify));

  @override
  _Verify get _value => super._value as _Verify;

  @override
  $Res call({
    Object? reference = freezed,
  }) {
    return _then(_Verify(
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Verify implements _Verify {
  const _$_Verify({required this.reference});

  @override
  final String reference;

  @override
  String toString() {
    return 'PaystackEvent.verify(reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Verify &&
            const DeepCollectionEquality().equals(other.reference, reference));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reference));

  @JsonKey(ignore: true)
  @override
  _$VerifyCopyWith<_Verify> get copyWith =>
      __$VerifyCopyWithImpl<_Verify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String amount) initialize,
    required TResult Function(String reference) verify,
  }) {
    return verify(reference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
  }) {
    return verify?.call(reference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String amount)? initialize,
    TResult Function(String reference)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(reference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Verify value) verify,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Verify value)? verify,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements PaystackEvent {
  const factory _Verify({required String reference}) = _$_Verify;

  String get reference;
  @JsonKey(ignore: true)
  _$VerifyCopyWith<_Verify> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaystackStateTearOff {
  const _$PaystackStateTearOff();

  _PaystackState call(
      {PayStackError? error,
      Transaction? transaction,
      required AppState appState}) {
    return _PaystackState(
      error: error,
      transaction: transaction,
      appState: appState,
    );
  }
}

/// @nodoc
const $PaystackState = _$PaystackStateTearOff();

/// @nodoc
mixin _$PaystackState {
  PayStackError? get error => throw _privateConstructorUsedError;
  Transaction? get transaction => throw _privateConstructorUsedError;
  AppState get appState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaystackStateCopyWith<PaystackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaystackStateCopyWith<$Res> {
  factory $PaystackStateCopyWith(
          PaystackState value, $Res Function(PaystackState) then) =
      _$PaystackStateCopyWithImpl<$Res>;
  $Res call(
      {PayStackError? error, Transaction? transaction, AppState appState});
}

/// @nodoc
class _$PaystackStateCopyWithImpl<$Res>
    implements $PaystackStateCopyWith<$Res> {
  _$PaystackStateCopyWithImpl(this._value, this._then);

  final PaystackState _value;
  // ignore: unused_field
  final $Res Function(PaystackState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? transaction = freezed,
    Object? appState = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PayStackError?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      appState: appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }
}

/// @nodoc
abstract class _$PaystackStateCopyWith<$Res>
    implements $PaystackStateCopyWith<$Res> {
  factory _$PaystackStateCopyWith(
          _PaystackState value, $Res Function(_PaystackState) then) =
      __$PaystackStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PayStackError? error, Transaction? transaction, AppState appState});
}

/// @nodoc
class __$PaystackStateCopyWithImpl<$Res>
    extends _$PaystackStateCopyWithImpl<$Res>
    implements _$PaystackStateCopyWith<$Res> {
  __$PaystackStateCopyWithImpl(
      _PaystackState _value, $Res Function(_PaystackState) _then)
      : super(_value, (v) => _then(v as _PaystackState));

  @override
  _PaystackState get _value => super._value as _PaystackState;

  @override
  $Res call({
    Object? error = freezed,
    Object? transaction = freezed,
    Object? appState = freezed,
  }) {
    return _then(_PaystackState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PayStackError?,
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      appState: appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }
}

/// @nodoc

class _$_PaystackState implements _PaystackState {
  const _$_PaystackState(
      {this.error, this.transaction, required this.appState});

  @override
  final PayStackError? error;
  @override
  final Transaction? transaction;
  @override
  final AppState appState;

  @override
  String toString() {
    return 'PaystackState(error: $error, transaction: $transaction, appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaystackState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality().equals(other.appState, appState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(appState));

  @JsonKey(ignore: true)
  @override
  _$PaystackStateCopyWith<_PaystackState> get copyWith =>
      __$PaystackStateCopyWithImpl<_PaystackState>(this, _$identity);
}

abstract class _PaystackState implements PaystackState {
  const factory _PaystackState(
      {PayStackError? error,
      Transaction? transaction,
      required AppState appState}) = _$_PaystackState;

  @override
  PayStackError? get error;
  @override
  Transaction? get transaction;
  @override
  AppState get appState;
  @override
  @JsonKey(ignore: true)
  _$PaystackStateCopyWith<_PaystackState> get copyWith =>
      throw _privateConstructorUsedError;
}
