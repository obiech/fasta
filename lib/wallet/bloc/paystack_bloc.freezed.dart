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

  _Balance balance() {
    return const _Balance();
  }

  _GetDepositLink getDepositLink(String amount) {
    return _GetDepositLink(
      amount,
    );
  }

  _AllTransactions allTransactions(TransactionArg arg) {
    return _AllTransactions(
      arg,
    );
  }

  _TransactionDetail transactionDetail(String transactionId) {
    return _TransactionDetail(
      transactionId,
    );
  }

  _GetDepositTransaction getDepositTransaction(TransactionArg arg) {
    return _GetDepositTransaction(
      arg,
    );
  }

  _GetWithdrawTransaction getWithdrawTransaction(TransactionArg arg) {
    return _GetWithdrawTransaction(
      arg,
    );
  }

  _GetAllEarnings getAllEarnings(TransactionArg arg) {
    return _GetAllEarnings(
      arg,
    );
  }

  _GetTotalEarnings getTotalEarnings(String period) {
    return _GetTotalEarnings(
      period,
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
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
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
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
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
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
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
abstract class _$BalanceCopyWith<$Res> {
  factory _$BalanceCopyWith(_Balance value, $Res Function(_Balance) then) =
      __$BalanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$BalanceCopyWithImpl<$Res> extends _$PaystackEventCopyWithImpl<$Res>
    implements _$BalanceCopyWith<$Res> {
  __$BalanceCopyWithImpl(_Balance _value, $Res Function(_Balance) _then)
      : super(_value, (v) => _then(v as _Balance));

  @override
  _Balance get _value => super._value as _Balance;
}

/// @nodoc

class _$_Balance implements _Balance {
  const _$_Balance();

  @override
  String toString() {
    return 'PaystackEvent.balance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Balance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return balance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return balance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (balance != null) {
      return balance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return balance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return balance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (balance != null) {
      return balance(this);
    }
    return orElse();
  }
}

abstract class _Balance implements PaystackEvent {
  const factory _Balance() = _$_Balance;
}

/// @nodoc
abstract class _$GetDepositLinkCopyWith<$Res> {
  factory _$GetDepositLinkCopyWith(
          _GetDepositLink value, $Res Function(_GetDepositLink) then) =
      __$GetDepositLinkCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$GetDepositLinkCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetDepositLinkCopyWith<$Res> {
  __$GetDepositLinkCopyWithImpl(
      _GetDepositLink _value, $Res Function(_GetDepositLink) _then)
      : super(_value, (v) => _then(v as _GetDepositLink));

  @override
  _GetDepositLink get _value => super._value as _GetDepositLink;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_GetDepositLink(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetDepositLink implements _GetDepositLink {
  const _$_GetDepositLink(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'PaystackEvent.getDepositLink(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetDepositLink &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$GetDepositLinkCopyWith<_GetDepositLink> get copyWith =>
      __$GetDepositLinkCopyWithImpl<_GetDepositLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return getDepositLink(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return getDepositLink?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getDepositLink != null) {
      return getDepositLink(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getDepositLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getDepositLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getDepositLink != null) {
      return getDepositLink(this);
    }
    return orElse();
  }
}

abstract class _GetDepositLink implements PaystackEvent {
  const factory _GetDepositLink(String amount) = _$_GetDepositLink;

  String get amount;
  @JsonKey(ignore: true)
  _$GetDepositLinkCopyWith<_GetDepositLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AllTransactionsCopyWith<$Res> {
  factory _$AllTransactionsCopyWith(
          _AllTransactions value, $Res Function(_AllTransactions) then) =
      __$AllTransactionsCopyWithImpl<$Res>;
  $Res call({TransactionArg arg});
}

/// @nodoc
class __$AllTransactionsCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$AllTransactionsCopyWith<$Res> {
  __$AllTransactionsCopyWithImpl(
      _AllTransactions _value, $Res Function(_AllTransactions) _then)
      : super(_value, (v) => _then(v as _AllTransactions));

  @override
  _AllTransactions get _value => super._value as _AllTransactions;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_AllTransactions(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as TransactionArg,
    ));
  }
}

/// @nodoc

class _$_AllTransactions implements _AllTransactions {
  const _$_AllTransactions(this.arg);

  @override
  final TransactionArg arg;

  @override
  String toString() {
    return 'PaystackEvent.allTransactions(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllTransactions &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$AllTransactionsCopyWith<_AllTransactions> get copyWith =>
      __$AllTransactionsCopyWithImpl<_AllTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return allTransactions(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return allTransactions?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (allTransactions != null) {
      return allTransactions(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return allTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return allTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (allTransactions != null) {
      return allTransactions(this);
    }
    return orElse();
  }
}

abstract class _AllTransactions implements PaystackEvent {
  const factory _AllTransactions(TransactionArg arg) = _$_AllTransactions;

  TransactionArg get arg;
  @JsonKey(ignore: true)
  _$AllTransactionsCopyWith<_AllTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionDetailCopyWith<$Res> {
  factory _$TransactionDetailCopyWith(
          _TransactionDetail value, $Res Function(_TransactionDetail) then) =
      __$TransactionDetailCopyWithImpl<$Res>;
  $Res call({String transactionId});
}

/// @nodoc
class __$TransactionDetailCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$TransactionDetailCopyWith<$Res> {
  __$TransactionDetailCopyWithImpl(
      _TransactionDetail _value, $Res Function(_TransactionDetail) _then)
      : super(_value, (v) => _then(v as _TransactionDetail));

  @override
  _TransactionDetail get _value => super._value as _TransactionDetail;

  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_TransactionDetail(
      transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TransactionDetail implements _TransactionDetail {
  const _$_TransactionDetail(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'PaystackEvent.transactionDetail(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDetail &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      __$TransactionDetailCopyWithImpl<_TransactionDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return transactionDetail(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return transactionDetail?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (transactionDetail != null) {
      return transactionDetail(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return transactionDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return transactionDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (transactionDetail != null) {
      return transactionDetail(this);
    }
    return orElse();
  }
}

abstract class _TransactionDetail implements PaystackEvent {
  const factory _TransactionDetail(String transactionId) = _$_TransactionDetail;

  String get transactionId;
  @JsonKey(ignore: true)
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDepositTransactionCopyWith<$Res> {
  factory _$GetDepositTransactionCopyWith(_GetDepositTransaction value,
          $Res Function(_GetDepositTransaction) then) =
      __$GetDepositTransactionCopyWithImpl<$Res>;
  $Res call({TransactionArg arg});
}

/// @nodoc
class __$GetDepositTransactionCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetDepositTransactionCopyWith<$Res> {
  __$GetDepositTransactionCopyWithImpl(_GetDepositTransaction _value,
      $Res Function(_GetDepositTransaction) _then)
      : super(_value, (v) => _then(v as _GetDepositTransaction));

  @override
  _GetDepositTransaction get _value => super._value as _GetDepositTransaction;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_GetDepositTransaction(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as TransactionArg,
    ));
  }
}

/// @nodoc

class _$_GetDepositTransaction implements _GetDepositTransaction {
  const _$_GetDepositTransaction(this.arg);

  @override
  final TransactionArg arg;

  @override
  String toString() {
    return 'PaystackEvent.getDepositTransaction(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetDepositTransaction &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$GetDepositTransactionCopyWith<_GetDepositTransaction> get copyWith =>
      __$GetDepositTransactionCopyWithImpl<_GetDepositTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return getDepositTransaction(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return getDepositTransaction?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getDepositTransaction != null) {
      return getDepositTransaction(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getDepositTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getDepositTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getDepositTransaction != null) {
      return getDepositTransaction(this);
    }
    return orElse();
  }
}

abstract class _GetDepositTransaction implements PaystackEvent {
  const factory _GetDepositTransaction(TransactionArg arg) =
      _$_GetDepositTransaction;

  TransactionArg get arg;
  @JsonKey(ignore: true)
  _$GetDepositTransactionCopyWith<_GetDepositTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetWithdrawTransactionCopyWith<$Res> {
  factory _$GetWithdrawTransactionCopyWith(_GetWithdrawTransaction value,
          $Res Function(_GetWithdrawTransaction) then) =
      __$GetWithdrawTransactionCopyWithImpl<$Res>;
  $Res call({TransactionArg arg});
}

/// @nodoc
class __$GetWithdrawTransactionCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetWithdrawTransactionCopyWith<$Res> {
  __$GetWithdrawTransactionCopyWithImpl(_GetWithdrawTransaction _value,
      $Res Function(_GetWithdrawTransaction) _then)
      : super(_value, (v) => _then(v as _GetWithdrawTransaction));

  @override
  _GetWithdrawTransaction get _value => super._value as _GetWithdrawTransaction;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_GetWithdrawTransaction(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as TransactionArg,
    ));
  }
}

/// @nodoc

class _$_GetWithdrawTransaction implements _GetWithdrawTransaction {
  const _$_GetWithdrawTransaction(this.arg);

  @override
  final TransactionArg arg;

  @override
  String toString() {
    return 'PaystackEvent.getWithdrawTransaction(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetWithdrawTransaction &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$GetWithdrawTransactionCopyWith<_GetWithdrawTransaction> get copyWith =>
      __$GetWithdrawTransactionCopyWithImpl<_GetWithdrawTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return getWithdrawTransaction(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return getWithdrawTransaction?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getWithdrawTransaction != null) {
      return getWithdrawTransaction(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getWithdrawTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getWithdrawTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getWithdrawTransaction != null) {
      return getWithdrawTransaction(this);
    }
    return orElse();
  }
}

abstract class _GetWithdrawTransaction implements PaystackEvent {
  const factory _GetWithdrawTransaction(TransactionArg arg) =
      _$_GetWithdrawTransaction;

  TransactionArg get arg;
  @JsonKey(ignore: true)
  _$GetWithdrawTransactionCopyWith<_GetWithdrawTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllEarningsCopyWith<$Res> {
  factory _$GetAllEarningsCopyWith(
          _GetAllEarnings value, $Res Function(_GetAllEarnings) then) =
      __$GetAllEarningsCopyWithImpl<$Res>;
  $Res call({TransactionArg arg});
}

/// @nodoc
class __$GetAllEarningsCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetAllEarningsCopyWith<$Res> {
  __$GetAllEarningsCopyWithImpl(
      _GetAllEarnings _value, $Res Function(_GetAllEarnings) _then)
      : super(_value, (v) => _then(v as _GetAllEarnings));

  @override
  _GetAllEarnings get _value => super._value as _GetAllEarnings;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_GetAllEarnings(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as TransactionArg,
    ));
  }
}

/// @nodoc

class _$_GetAllEarnings implements _GetAllEarnings {
  const _$_GetAllEarnings(this.arg);

  @override
  final TransactionArg arg;

  @override
  String toString() {
    return 'PaystackEvent.getAllEarnings(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllEarnings &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$GetAllEarningsCopyWith<_GetAllEarnings> get copyWith =>
      __$GetAllEarningsCopyWithImpl<_GetAllEarnings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return getAllEarnings(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return getAllEarnings?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getAllEarnings != null) {
      return getAllEarnings(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getAllEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getAllEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getAllEarnings != null) {
      return getAllEarnings(this);
    }
    return orElse();
  }
}

abstract class _GetAllEarnings implements PaystackEvent {
  const factory _GetAllEarnings(TransactionArg arg) = _$_GetAllEarnings;

  TransactionArg get arg;
  @JsonKey(ignore: true)
  _$GetAllEarningsCopyWith<_GetAllEarnings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetTotalEarningsCopyWith<$Res> {
  factory _$GetTotalEarningsCopyWith(
          _GetTotalEarnings value, $Res Function(_GetTotalEarnings) then) =
      __$GetTotalEarningsCopyWithImpl<$Res>;
  $Res call({String period});
}

/// @nodoc
class __$GetTotalEarningsCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetTotalEarningsCopyWith<$Res> {
  __$GetTotalEarningsCopyWithImpl(
      _GetTotalEarnings _value, $Res Function(_GetTotalEarnings) _then)
      : super(_value, (v) => _then(v as _GetTotalEarnings));

  @override
  _GetTotalEarnings get _value => super._value as _GetTotalEarnings;

  @override
  $Res call({
    Object? period = freezed,
  }) {
    return _then(_GetTotalEarnings(
      period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTotalEarnings implements _GetTotalEarnings {
  const _$_GetTotalEarnings(this.period);

  @override
  final String period;

  @override
  String toString() {
    return 'PaystackEvent.getTotalEarnings(period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTotalEarnings &&
            const DeepCollectionEquality().equals(other.period, period));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(period));

  @JsonKey(ignore: true)
  @override
  _$GetTotalEarningsCopyWith<_GetTotalEarnings> get copyWith =>
      __$GetTotalEarningsCopyWithImpl<_GetTotalEarnings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() balance,
    required TResult Function(String amount) getDepositLink,
    required TResult Function(TransactionArg arg) allTransactions,
    required TResult Function(String transactionId) transactionDetail,
    required TResult Function(TransactionArg arg) getDepositTransaction,
    required TResult Function(TransactionArg arg) getWithdrawTransaction,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
  }) {
    return getTotalEarnings(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
  }) {
    return getTotalEarnings?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? balance,
    TResult Function(String amount)? getDepositLink,
    TResult Function(TransactionArg arg)? allTransactions,
    TResult Function(String transactionId)? transactionDetail,
    TResult Function(TransactionArg arg)? getDepositTransaction,
    TResult Function(TransactionArg arg)? getWithdrawTransaction,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Balance value) balance,
    required TResult Function(_GetDepositLink value) getDepositLink,
    required TResult Function(_AllTransactions value) allTransactions,
    required TResult Function(_TransactionDetail value) transactionDetail,
    required TResult Function(_GetDepositTransaction value)
        getDepositTransaction,
    required TResult Function(_GetWithdrawTransaction value)
        getWithdrawTransaction,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getTotalEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getTotalEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Balance value)? balance,
    TResult Function(_GetDepositLink value)? getDepositLink,
    TResult Function(_AllTransactions value)? allTransactions,
    TResult Function(_TransactionDetail value)? transactionDetail,
    TResult Function(_GetDepositTransaction value)? getDepositTransaction,
    TResult Function(_GetWithdrawTransaction value)? getWithdrawTransaction,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings(this);
    }
    return orElse();
  }
}

abstract class _GetTotalEarnings implements PaystackEvent {
  const factory _GetTotalEarnings(String period) = _$_GetTotalEarnings;

  String get period;
  @JsonKey(ignore: true)
  _$GetTotalEarningsCopyWith<_GetTotalEarnings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaystackStateTearOff {
  const _$PaystackStateTearOff();

  _PaystackState call(
      {AppError? error,
      PayStack? payStack,
      required AppState appState,
      List<Transaction>? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      required String totalEarning}) {
    return _PaystackState(
      error: error,
      payStack: payStack,
      appState: appState,
      allTransaction: allTransaction,
      transactionDetail: transactionDetail,
      balance: balance,
      totalEarning: totalEarning,
    );
  }
}

/// @nodoc
const $PaystackState = _$PaystackStateTearOff();

/// @nodoc
mixin _$PaystackState {
  AppError? get error => throw _privateConstructorUsedError;
  PayStack? get payStack => throw _privateConstructorUsedError;
  AppState get appState => throw _privateConstructorUsedError;
  List<Transaction>? get allTransaction => throw _privateConstructorUsedError;
  Transaction? get transactionDetail => throw _privateConstructorUsedError;
  Transaction? get balance => throw _privateConstructorUsedError;
  String get totalEarning => throw _privateConstructorUsedError;

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
      {AppError? error,
      PayStack? payStack,
      AppState appState,
      List<Transaction>? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      String totalEarning});
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
    Object? payStack = freezed,
    Object? appState = freezed,
    Object? allTransaction = freezed,
    Object? transactionDetail = freezed,
    Object? balance = freezed,
    Object? totalEarning = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      payStack: payStack == freezed
          ? _value.payStack
          : payStack // ignore: cast_nullable_to_non_nullable
              as PayStack?,
      appState: appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
      allTransaction: allTransaction == freezed
          ? _value.allTransaction
          : allTransaction // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      transactionDetail: transactionDetail == freezed
          ? _value.transactionDetail
          : transactionDetail // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      totalEarning: totalEarning == freezed
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as String,
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
      {AppError? error,
      PayStack? payStack,
      AppState appState,
      List<Transaction>? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      String totalEarning});
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
    Object? payStack = freezed,
    Object? appState = freezed,
    Object? allTransaction = freezed,
    Object? transactionDetail = freezed,
    Object? balance = freezed,
    Object? totalEarning = freezed,
  }) {
    return _then(_PaystackState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      payStack: payStack == freezed
          ? _value.payStack
          : payStack // ignore: cast_nullable_to_non_nullable
              as PayStack?,
      appState: appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
      allTransaction: allTransaction == freezed
          ? _value.allTransaction
          : allTransaction // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      transactionDetail: transactionDetail == freezed
          ? _value.transactionDetail
          : transactionDetail // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      totalEarning: totalEarning == freezed
          ? _value.totalEarning
          : totalEarning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaystackState implements _PaystackState {
  const _$_PaystackState(
      {this.error,
      this.payStack,
      required this.appState,
      this.allTransaction,
      this.transactionDetail,
      this.balance,
      required this.totalEarning});

  @override
  final AppError? error;
  @override
  final PayStack? payStack;
  @override
  final AppState appState;
  @override
  final List<Transaction>? allTransaction;
  @override
  final Transaction? transactionDetail;
  @override
  final Transaction? balance;
  @override
  final String totalEarning;

  @override
  String toString() {
    return 'PaystackState(error: $error, payStack: $payStack, appState: $appState, allTransaction: $allTransaction, transactionDetail: $transactionDetail, balance: $balance, totalEarning: $totalEarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaystackState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.payStack, payStack) &&
            const DeepCollectionEquality().equals(other.appState, appState) &&
            const DeepCollectionEquality()
                .equals(other.allTransaction, allTransaction) &&
            const DeepCollectionEquality()
                .equals(other.transactionDetail, transactionDetail) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.totalEarning, totalEarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(payStack),
      const DeepCollectionEquality().hash(appState),
      const DeepCollectionEquality().hash(allTransaction),
      const DeepCollectionEquality().hash(transactionDetail),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(totalEarning));

  @JsonKey(ignore: true)
  @override
  _$PaystackStateCopyWith<_PaystackState> get copyWith =>
      __$PaystackStateCopyWithImpl<_PaystackState>(this, _$identity);
}

abstract class _PaystackState implements PaystackState {
  const factory _PaystackState(
      {AppError? error,
      PayStack? payStack,
      required AppState appState,
      List<Transaction>? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      required String totalEarning}) = _$_PaystackState;

  @override
  AppError? get error;
  @override
  PayStack? get payStack;
  @override
  AppState get appState;
  @override
  List<Transaction>? get allTransaction;
  @override
  Transaction? get transactionDetail;
  @override
  Transaction? get balance;
  @override
  String get totalEarning;
  @override
  @JsonKey(ignore: true)
  _$PaystackStateCopyWith<_PaystackState> get copyWith =>
      throw _privateConstructorUsedError;
}
