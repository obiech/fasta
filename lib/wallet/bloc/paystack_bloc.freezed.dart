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

  _GetBankList getBankList() {
    return const _GetBankList();
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

  _ResolveAccountNumber resolveAccountNumber(
      String accountNumber, String bankCode) {
    return _ResolveAccountNumber(
      accountNumber,
      bankCode,
    );
  }

  _InitiateWithdrawal initiateWithdrawal([String? amount]) {
    return _InitiateWithdrawal(
      amount,
    );
  }

  _ConfirmWithdrawalOtp confirmWithdrawalOtp() {
    return const _ConfirmWithdrawalOtp();
  }

  _EnterOtpAndBankCode enterOtpAndBankCode(
      String bankCode, String otp, String userId) {
    return _EnterOtpAndBankCode(
      bankCode,
      otp,
      userId,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
abstract class _$GetBankListCopyWith<$Res> {
  factory _$GetBankListCopyWith(
          _GetBankList value, $Res Function(_GetBankList) then) =
      __$GetBankListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBankListCopyWithImpl<$Res> extends _$PaystackEventCopyWithImpl<$Res>
    implements _$GetBankListCopyWith<$Res> {
  __$GetBankListCopyWithImpl(
      _GetBankList _value, $Res Function(_GetBankList) _then)
      : super(_value, (v) => _then(v as _GetBankList));

  @override
  _GetBankList get _value => super._value as _GetBankList;
}

/// @nodoc

class _$_GetBankList implements _GetBankList {
  const _$_GetBankList();

  @override
  String toString() {
    return 'PaystackEvent.getBankList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetBankList);
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
  }) {
    return getBankList();
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
  }) {
    return getBankList?.call();
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (getBankList != null) {
      return getBankList();
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
  }) {
    return getBankList(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
  }) {
    return getBankList?.call(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (getBankList != null) {
      return getBankList(this);
    }
    return orElse();
  }
}

abstract class _GetBankList implements PaystackEvent {
  const factory _GetBankList() = _$_GetBankList;
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
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
abstract class _$ResolveAccountNumberCopyWith<$Res> {
  factory _$ResolveAccountNumberCopyWith(_ResolveAccountNumber value,
          $Res Function(_ResolveAccountNumber) then) =
      __$ResolveAccountNumberCopyWithImpl<$Res>;
  $Res call({String accountNumber, String bankCode});
}

/// @nodoc
class __$ResolveAccountNumberCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$ResolveAccountNumberCopyWith<$Res> {
  __$ResolveAccountNumberCopyWithImpl(
      _ResolveAccountNumber _value, $Res Function(_ResolveAccountNumber) _then)
      : super(_value, (v) => _then(v as _ResolveAccountNumber));

  @override
  _ResolveAccountNumber get _value => super._value as _ResolveAccountNumber;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? bankCode = freezed,
  }) {
    return _then(_ResolveAccountNumber(
      accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResolveAccountNumber implements _ResolveAccountNumber {
  const _$_ResolveAccountNumber(this.accountNumber, this.bankCode);

  @override
  final String accountNumber;
  @override
  final String bankCode;

  @override
  String toString() {
    return 'PaystackEvent.resolveAccountNumber(accountNumber: $accountNumber, bankCode: $bankCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResolveAccountNumber &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.bankCode, bankCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(bankCode));

  @JsonKey(ignore: true)
  @override
  _$ResolveAccountNumberCopyWith<_ResolveAccountNumber> get copyWith =>
      __$ResolveAccountNumberCopyWithImpl<_ResolveAccountNumber>(
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
  }) {
    return resolveAccountNumber(accountNumber, bankCode);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
  }) {
    return resolveAccountNumber?.call(accountNumber, bankCode);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (resolveAccountNumber != null) {
      return resolveAccountNumber(accountNumber, bankCode);
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
  }) {
    return resolveAccountNumber(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
  }) {
    return resolveAccountNumber?.call(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (resolveAccountNumber != null) {
      return resolveAccountNumber(this);
    }
    return orElse();
  }
}

abstract class _ResolveAccountNumber implements PaystackEvent {
  const factory _ResolveAccountNumber(String accountNumber, String bankCode) =
      _$_ResolveAccountNumber;

  String get accountNumber;
  String get bankCode;
  @JsonKey(ignore: true)
  _$ResolveAccountNumberCopyWith<_ResolveAccountNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitiateWithdrawalCopyWith<$Res> {
  factory _$InitiateWithdrawalCopyWith(
          _InitiateWithdrawal value, $Res Function(_InitiateWithdrawal) then) =
      __$InitiateWithdrawalCopyWithImpl<$Res>;
  $Res call({String? amount});
}

/// @nodoc
class __$InitiateWithdrawalCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$InitiateWithdrawalCopyWith<$Res> {
  __$InitiateWithdrawalCopyWithImpl(
      _InitiateWithdrawal _value, $Res Function(_InitiateWithdrawal) _then)
      : super(_value, (v) => _then(v as _InitiateWithdrawal));

  @override
  _InitiateWithdrawal get _value => super._value as _InitiateWithdrawal;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_InitiateWithdrawal(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InitiateWithdrawal implements _InitiateWithdrawal {
  const _$_InitiateWithdrawal([this.amount]);

  @override
  final String? amount;

  @override
  String toString() {
    return 'PaystackEvent.initiateWithdrawal(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitiateWithdrawal &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$InitiateWithdrawalCopyWith<_InitiateWithdrawal> get copyWith =>
      __$InitiateWithdrawalCopyWithImpl<_InitiateWithdrawal>(this, _$identity);

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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
  }) {
    return initiateWithdrawal(amount);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
  }) {
    return initiateWithdrawal?.call(amount);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (initiateWithdrawal != null) {
      return initiateWithdrawal(amount);
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
  }) {
    return initiateWithdrawal(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
  }) {
    return initiateWithdrawal?.call(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (initiateWithdrawal != null) {
      return initiateWithdrawal(this);
    }
    return orElse();
  }
}

abstract class _InitiateWithdrawal implements PaystackEvent {
  const factory _InitiateWithdrawal([String? amount]) = _$_InitiateWithdrawal;

  String? get amount;
  @JsonKey(ignore: true)
  _$InitiateWithdrawalCopyWith<_InitiateWithdrawal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmWithdrawalOtpCopyWith<$Res> {
  factory _$ConfirmWithdrawalOtpCopyWith(_ConfirmWithdrawalOtp value,
          $Res Function(_ConfirmWithdrawalOtp) then) =
      __$ConfirmWithdrawalOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmWithdrawalOtpCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$ConfirmWithdrawalOtpCopyWith<$Res> {
  __$ConfirmWithdrawalOtpCopyWithImpl(
      _ConfirmWithdrawalOtp _value, $Res Function(_ConfirmWithdrawalOtp) _then)
      : super(_value, (v) => _then(v as _ConfirmWithdrawalOtp));

  @override
  _ConfirmWithdrawalOtp get _value => super._value as _ConfirmWithdrawalOtp;
}

/// @nodoc

class _$_ConfirmWithdrawalOtp implements _ConfirmWithdrawalOtp {
  const _$_ConfirmWithdrawalOtp();

  @override
  String toString() {
    return 'PaystackEvent.confirmWithdrawalOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmWithdrawalOtp);
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
  }) {
    return confirmWithdrawalOtp();
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
  }) {
    return confirmWithdrawalOtp?.call();
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (confirmWithdrawalOtp != null) {
      return confirmWithdrawalOtp();
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
  }) {
    return confirmWithdrawalOtp(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
  }) {
    return confirmWithdrawalOtp?.call(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (confirmWithdrawalOtp != null) {
      return confirmWithdrawalOtp(this);
    }
    return orElse();
  }
}

abstract class _ConfirmWithdrawalOtp implements PaystackEvent {
  const factory _ConfirmWithdrawalOtp() = _$_ConfirmWithdrawalOtp;
}

/// @nodoc
abstract class _$EnterOtpAndBankCodeCopyWith<$Res> {
  factory _$EnterOtpAndBankCodeCopyWith(_EnterOtpAndBankCode value,
          $Res Function(_EnterOtpAndBankCode) then) =
      __$EnterOtpAndBankCodeCopyWithImpl<$Res>;
  $Res call({String bankCode, String otp, String userId});
}

/// @nodoc
class __$EnterOtpAndBankCodeCopyWithImpl<$Res>
    extends _$PaystackEventCopyWithImpl<$Res>
    implements _$EnterOtpAndBankCodeCopyWith<$Res> {
  __$EnterOtpAndBankCodeCopyWithImpl(
      _EnterOtpAndBankCode _value, $Res Function(_EnterOtpAndBankCode) _then)
      : super(_value, (v) => _then(v as _EnterOtpAndBankCode));

  @override
  _EnterOtpAndBankCode get _value => super._value as _EnterOtpAndBankCode;

  @override
  $Res call({
    Object? bankCode = freezed,
    Object? otp = freezed,
    Object? userId = freezed,
  }) {
    return _then(_EnterOtpAndBankCode(
      bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterOtpAndBankCode implements _EnterOtpAndBankCode {
  const _$_EnterOtpAndBankCode(this.bankCode, this.otp, this.userId);

  @override
  final String bankCode;
  @override
  final String otp;
  @override
  final String userId;

  @override
  String toString() {
    return 'PaystackEvent.enterOtpAndBankCode(bankCode: $bankCode, otp: $otp, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EnterOtpAndBankCode &&
            const DeepCollectionEquality().equals(other.bankCode, bankCode) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bankCode),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$EnterOtpAndBankCodeCopyWith<_EnterOtpAndBankCode> get copyWith =>
      __$EnterOtpAndBankCodeCopyWithImpl<_EnterOtpAndBankCode>(
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
    required TResult Function() getBankList,
    required TResult Function(TransactionArg arg) getAllEarnings,
    required TResult Function(String period) getTotalEarnings,
    required TResult Function(String accountNumber, String bankCode)
        resolveAccountNumber,
    required TResult Function(String? amount) initiateWithdrawal,
    required TResult Function() confirmWithdrawalOtp,
    required TResult Function(String bankCode, String otp, String userId)
        enterOtpAndBankCode,
  }) {
    return enterOtpAndBankCode(bankCode, otp, userId);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
  }) {
    return enterOtpAndBankCode?.call(bankCode, otp, userId);
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
    TResult Function()? getBankList,
    TResult Function(TransactionArg arg)? getAllEarnings,
    TResult Function(String period)? getTotalEarnings,
    TResult Function(String accountNumber, String bankCode)?
        resolveAccountNumber,
    TResult Function(String? amount)? initiateWithdrawal,
    TResult Function()? confirmWithdrawalOtp,
    TResult Function(String bankCode, String otp, String userId)?
        enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (enterOtpAndBankCode != null) {
      return enterOtpAndBankCode(bankCode, otp, userId);
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
    required TResult Function(_GetBankList value) getBankList,
    required TResult Function(_GetAllEarnings value) getAllEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
    required TResult Function(_ResolveAccountNumber value) resolveAccountNumber,
    required TResult Function(_InitiateWithdrawal value) initiateWithdrawal,
    required TResult Function(_ConfirmWithdrawalOtp value) confirmWithdrawalOtp,
    required TResult Function(_EnterOtpAndBankCode value) enterOtpAndBankCode,
  }) {
    return enterOtpAndBankCode(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
  }) {
    return enterOtpAndBankCode?.call(this);
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
    TResult Function(_GetBankList value)? getBankList,
    TResult Function(_GetAllEarnings value)? getAllEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    TResult Function(_ResolveAccountNumber value)? resolveAccountNumber,
    TResult Function(_InitiateWithdrawal value)? initiateWithdrawal,
    TResult Function(_ConfirmWithdrawalOtp value)? confirmWithdrawalOtp,
    TResult Function(_EnterOtpAndBankCode value)? enterOtpAndBankCode,
    required TResult orElse(),
  }) {
    if (enterOtpAndBankCode != null) {
      return enterOtpAndBankCode(this);
    }
    return orElse();
  }
}

abstract class _EnterOtpAndBankCode implements PaystackEvent {
  const factory _EnterOtpAndBankCode(
      String bankCode, String otp, String userId) = _$_EnterOtpAndBankCode;

  String get bankCode;
  String get otp;
  String get userId;
  @JsonKey(ignore: true)
  _$EnterOtpAndBankCodeCopyWith<_EnterOtpAndBankCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaystackStateTearOff {
  const _$PaystackStateTearOff();

  _PaystackState call(
      {AppError? error,
      PayStack? payStack,
      required AppState appState,
      AllTrasaction? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      required String totalEarning,
      AccountInfo? accountInfo,
      String? otpId,
      String? amount,
      String? otpCode,
      String? bankCode,
      String? userId,
      List<BankInfo> bankList = const []}) {
    return _PaystackState(
      error: error,
      payStack: payStack,
      appState: appState,
      allTransaction: allTransaction,
      transactionDetail: transactionDetail,
      balance: balance,
      totalEarning: totalEarning,
      accountInfo: accountInfo,
      otpId: otpId,
      amount: amount,
      otpCode: otpCode,
      bankCode: bankCode,
      userId: userId,
      bankList: bankList,
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
  AllTrasaction? get allTransaction => throw _privateConstructorUsedError;
  Transaction? get transactionDetail => throw _privateConstructorUsedError;
  Transaction? get balance => throw _privateConstructorUsedError;
  String get totalEarning => throw _privateConstructorUsedError;
  AccountInfo? get accountInfo => throw _privateConstructorUsedError;
  String? get otpId => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get otpCode => throw _privateConstructorUsedError;
  String? get bankCode => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<BankInfo> get bankList => throw _privateConstructorUsedError;

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
      AllTrasaction? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      String totalEarning,
      AccountInfo? accountInfo,
      String? otpId,
      String? amount,
      String? otpCode,
      String? bankCode,
      String? userId,
      List<BankInfo> bankList});
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
    Object? accountInfo = freezed,
    Object? otpId = freezed,
    Object? amount = freezed,
    Object? otpCode = freezed,
    Object? bankCode = freezed,
    Object? userId = freezed,
    Object? bankList = freezed,
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
              as AllTrasaction?,
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
      accountInfo: accountInfo == freezed
          ? _value.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo?,
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankList: bankList == freezed
          ? _value.bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInfo>,
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
      AllTrasaction? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      String totalEarning,
      AccountInfo? accountInfo,
      String? otpId,
      String? amount,
      String? otpCode,
      String? bankCode,
      String? userId,
      List<BankInfo> bankList});
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
    Object? accountInfo = freezed,
    Object? otpId = freezed,
    Object? amount = freezed,
    Object? otpCode = freezed,
    Object? bankCode = freezed,
    Object? userId = freezed,
    Object? bankList = freezed,
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
              as AllTrasaction?,
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
      accountInfo: accountInfo == freezed
          ? _value.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo?,
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankList: bankList == freezed
          ? _value.bankList
          : bankList // ignore: cast_nullable_to_non_nullable
              as List<BankInfo>,
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
      required this.totalEarning,
      this.accountInfo,
      this.otpId,
      this.amount,
      this.otpCode,
      this.bankCode,
      this.userId,
      this.bankList = const []});

  @override
  final AppError? error;
  @override
  final PayStack? payStack;
  @override
  final AppState appState;
  @override
  final AllTrasaction? allTransaction;
  @override
  final Transaction? transactionDetail;
  @override
  final Transaction? balance;
  @override
  final String totalEarning;
  @override
  final AccountInfo? accountInfo;
  @override
  final String? otpId;
  @override
  final String? amount;
  @override
  final String? otpCode;
  @override
  final String? bankCode;
  @override
  final String? userId;
  @JsonKey()
  @override
  final List<BankInfo> bankList;

  @override
  String toString() {
    return 'PaystackState(error: $error, payStack: $payStack, appState: $appState, allTransaction: $allTransaction, transactionDetail: $transactionDetail, balance: $balance, totalEarning: $totalEarning, accountInfo: $accountInfo, otpId: $otpId, amount: $amount, otpCode: $otpCode, bankCode: $bankCode, userId: $userId, bankList: $bankList)';
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
                .equals(other.totalEarning, totalEarning) &&
            const DeepCollectionEquality()
                .equals(other.accountInfo, accountInfo) &&
            const DeepCollectionEquality().equals(other.otpId, otpId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode) &&
            const DeepCollectionEquality().equals(other.bankCode, bankCode) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.bankList, bankList));
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
      const DeepCollectionEquality().hash(totalEarning),
      const DeepCollectionEquality().hash(accountInfo),
      const DeepCollectionEquality().hash(otpId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(otpCode),
      const DeepCollectionEquality().hash(bankCode),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(bankList));

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
      AllTrasaction? allTransaction,
      Transaction? transactionDetail,
      Transaction? balance,
      required String totalEarning,
      AccountInfo? accountInfo,
      String? otpId,
      String? amount,
      String? otpCode,
      String? bankCode,
      String? userId,
      List<BankInfo> bankList}) = _$_PaystackState;

  @override
  AppError? get error;
  @override
  PayStack? get payStack;
  @override
  AppState get appState;
  @override
  AllTrasaction? get allTransaction;
  @override
  Transaction? get transactionDetail;
  @override
  Transaction? get balance;
  @override
  String get totalEarning;
  @override
  AccountInfo? get accountInfo;
  @override
  String? get otpId;
  @override
  String? get amount;
  @override
  String? get otpCode;
  @override
  String? get bankCode;
  @override
  String? get userId;
  @override
  List<BankInfo> get bankList;
  @override
  @JsonKey(ignore: true)
  _$PaystackStateCopyWith<_PaystackState> get copyWith =>
      throw _privateConstructorUsedError;
}
