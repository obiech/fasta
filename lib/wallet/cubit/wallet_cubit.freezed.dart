// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  _WalletState call({required int amount, required List<String> histroy}) {
    return _WalletState(
      amount: amount,
      histroy: histroy,
    );
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  int get amount => throw _privateConstructorUsedError;
  List<String> get histroy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
  $Res call({int amount, List<String> histroy});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? histroy = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      histroy: histroy == freezed
          ? _value.histroy
          : histroy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$WalletStateCopyWith(
          _WalletState value, $Res Function(_WalletState) then) =
      __$WalletStateCopyWithImpl<$Res>;
  @override
  $Res call({int amount, List<String> histroy});
}

/// @nodoc
class __$WalletStateCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$WalletStateCopyWith<$Res> {
  __$WalletStateCopyWithImpl(
      _WalletState _value, $Res Function(_WalletState) _then)
      : super(_value, (v) => _then(v as _WalletState));

  @override
  _WalletState get _value => super._value as _WalletState;

  @override
  $Res call({
    Object? amount = freezed,
    Object? histroy = freezed,
  }) {
    return _then(_WalletState(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      histroy: histroy == freezed
          ? _value.histroy
          : histroy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_WalletState implements _WalletState {
  _$_WalletState({required this.amount, required this.histroy});

  @override
  final int amount;
  @override
  final List<String> histroy;

  @override
  String toString() {
    return 'WalletState(amount: $amount, histroy: $histroy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletState &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.histroy, histroy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(histroy));

  @JsonKey(ignore: true)
  @override
  _$WalletStateCopyWith<_WalletState> get copyWith =>
      __$WalletStateCopyWithImpl<_WalletState>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  factory _WalletState({required int amount, required List<String> histroy}) =
      _$_WalletState;

  @override
  int get amount;
  @override
  List<String> get histroy;
  @override
  @JsonKey(ignore: true)
  _$WalletStateCopyWith<_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
