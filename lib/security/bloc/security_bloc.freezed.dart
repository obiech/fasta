// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'security_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecurityEventTearOff {
  const _$SecurityEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ChangePhoneNumber changePhoneNumber(String phoneNumber) {
    return _ChangePhoneNumber(
      phoneNumber,
    );
  }

  _ChangePhoneNumberConfirmOTP changePhoneNumberConfirmOTP(
      String otpId, String otpCode) {
    return _ChangePhoneNumberConfirmOTP(
      otpId,
      otpCode,
    );
  }

  _ChangeEmail changeEmail(String email) {
    return _ChangeEmail(
      email,
    );
  }

  _ChangeEmailConfirmOTP changeEmailConfirmOTP(String otpId, String otpCode) {
    return _ChangeEmailConfirmOTP(
      otpId,
      otpCode,
    );
  }

  _ChangePassword changePassword(
      String oddPassword, String newPasswrd, String confirmPassword) {
    return _ChangePassword(
      oddPassword,
      newPasswrd,
      confirmPassword,
    );
  }
}

/// @nodoc
const $SecurityEvent = _$SecurityEventTearOff();

/// @nodoc
mixin _$SecurityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityEventCopyWith<$Res> {
  factory $SecurityEventCopyWith(
          SecurityEvent value, $Res Function(SecurityEvent) then) =
      _$SecurityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecurityEventCopyWithImpl<$Res>
    implements $SecurityEventCopyWith<$Res> {
  _$SecurityEventCopyWithImpl(this._value, this._then);

  final SecurityEvent _value;
  // ignore: unused_field
  final $Res Function(SecurityEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SecurityEventCopyWithImpl<$Res>
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
    return 'SecurityEvent.started()';
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
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
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
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SecurityEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ChangePhoneNumberCopyWith<$Res> {
  factory _$ChangePhoneNumberCopyWith(
          _ChangePhoneNumber value, $Res Function(_ChangePhoneNumber) then) =
      __$ChangePhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$ChangePhoneNumberCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements _$ChangePhoneNumberCopyWith<$Res> {
  __$ChangePhoneNumberCopyWithImpl(
      _ChangePhoneNumber _value, $Res Function(_ChangePhoneNumber) _then)
      : super(_value, (v) => _then(v as _ChangePhoneNumber));

  @override
  _ChangePhoneNumber get _value => super._value as _ChangePhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_ChangePhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhoneNumber implements _ChangePhoneNumber {
  const _$_ChangePhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SecurityEvent.changePhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      __$ChangePhoneNumberCopyWithImpl<_ChangePhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return changePhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return changePhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePhoneNumber != null) {
      return changePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoneNumber implements SecurityEvent {
  const factory _ChangePhoneNumber(String phoneNumber) = _$_ChangePhoneNumber;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$ChangePhoneNumberCopyWith<_ChangePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePhoneNumberConfirmOTPCopyWith<$Res> {
  factory _$ChangePhoneNumberConfirmOTPCopyWith(
          _ChangePhoneNumberConfirmOTP value,
          $Res Function(_ChangePhoneNumberConfirmOTP) then) =
      __$ChangePhoneNumberConfirmOTPCopyWithImpl<$Res>;
  $Res call({String otpId, String otpCode});
}

/// @nodoc
class __$ChangePhoneNumberConfirmOTPCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements _$ChangePhoneNumberConfirmOTPCopyWith<$Res> {
  __$ChangePhoneNumberConfirmOTPCopyWithImpl(
      _ChangePhoneNumberConfirmOTP _value,
      $Res Function(_ChangePhoneNumberConfirmOTP) _then)
      : super(_value, (v) => _then(v as _ChangePhoneNumberConfirmOTP));

  @override
  _ChangePhoneNumberConfirmOTP get _value =>
      super._value as _ChangePhoneNumberConfirmOTP;

  @override
  $Res call({
    Object? otpId = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_ChangePhoneNumberConfirmOTP(
      otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhoneNumberConfirmOTP implements _ChangePhoneNumberConfirmOTP {
  const _$_ChangePhoneNumberConfirmOTP(this.otpId, this.otpCode);

  @override
  final String otpId;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'SecurityEvent.changePhoneNumberConfirmOTP(otpId: $otpId, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePhoneNumberConfirmOTP &&
            const DeepCollectionEquality().equals(other.otpId, otpId) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(otpId),
      const DeepCollectionEquality().hash(otpCode));

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneNumberConfirmOTPCopyWith<_ChangePhoneNumberConfirmOTP>
      get copyWith => __$ChangePhoneNumberConfirmOTPCopyWithImpl<
          _ChangePhoneNumberConfirmOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return changePhoneNumberConfirmOTP(otpId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return changePhoneNumberConfirmOTP?.call(otpId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePhoneNumberConfirmOTP != null) {
      return changePhoneNumberConfirmOTP(otpId, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePhoneNumberConfirmOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changePhoneNumberConfirmOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePhoneNumberConfirmOTP != null) {
      return changePhoneNumberConfirmOTP(this);
    }
    return orElse();
  }
}

abstract class _ChangePhoneNumberConfirmOTP implements SecurityEvent {
  const factory _ChangePhoneNumberConfirmOTP(String otpId, String otpCode) =
      _$_ChangePhoneNumberConfirmOTP;

  String get otpId;
  String get otpCode;
  @JsonKey(ignore: true)
  _$ChangePhoneNumberConfirmOTPCopyWith<_ChangePhoneNumberConfirmOTP>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ChangeEmailCopyWithImpl<$Res> extends _$SecurityEventCopyWithImpl<$Res>
    implements _$ChangeEmailCopyWith<$Res> {
  __$ChangeEmailCopyWithImpl(
      _ChangeEmail _value, $Res Function(_ChangeEmail) _then)
      : super(_value, (v) => _then(v as _ChangeEmail));

  @override
  _ChangeEmail get _value => super._value as _ChangeEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ChangeEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SecurityEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      __$ChangeEmailCopyWithImpl<_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements SecurityEvent {
  const factory _ChangeEmail(String email) = _$_ChangeEmail;

  String get email;
  @JsonKey(ignore: true)
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeEmailConfirmOTPCopyWith<$Res> {
  factory _$ChangeEmailConfirmOTPCopyWith(_ChangeEmailConfirmOTP value,
          $Res Function(_ChangeEmailConfirmOTP) then) =
      __$ChangeEmailConfirmOTPCopyWithImpl<$Res>;
  $Res call({String otpId, String otpCode});
}

/// @nodoc
class __$ChangeEmailConfirmOTPCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements _$ChangeEmailConfirmOTPCopyWith<$Res> {
  __$ChangeEmailConfirmOTPCopyWithImpl(_ChangeEmailConfirmOTP _value,
      $Res Function(_ChangeEmailConfirmOTP) _then)
      : super(_value, (v) => _then(v as _ChangeEmailConfirmOTP));

  @override
  _ChangeEmailConfirmOTP get _value => super._value as _ChangeEmailConfirmOTP;

  @override
  $Res call({
    Object? otpId = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_ChangeEmailConfirmOTP(
      otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmailConfirmOTP implements _ChangeEmailConfirmOTP {
  const _$_ChangeEmailConfirmOTP(this.otpId, this.otpCode);

  @override
  final String otpId;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'SecurityEvent.changeEmailConfirmOTP(otpId: $otpId, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeEmailConfirmOTP &&
            const DeepCollectionEquality().equals(other.otpId, otpId) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(otpId),
      const DeepCollectionEquality().hash(otpCode));

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailConfirmOTPCopyWith<_ChangeEmailConfirmOTP> get copyWith =>
      __$ChangeEmailConfirmOTPCopyWithImpl<_ChangeEmailConfirmOTP>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return changeEmailConfirmOTP(otpId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return changeEmailConfirmOTP?.call(otpId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changeEmailConfirmOTP != null) {
      return changeEmailConfirmOTP(otpId, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changeEmailConfirmOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changeEmailConfirmOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmailConfirmOTP != null) {
      return changeEmailConfirmOTP(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmailConfirmOTP implements SecurityEvent {
  const factory _ChangeEmailConfirmOTP(String otpId, String otpCode) =
      _$_ChangeEmailConfirmOTP;

  String get otpId;
  String get otpCode;
  @JsonKey(ignore: true)
  _$ChangeEmailConfirmOTPCopyWith<_ChangeEmailConfirmOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String oddPassword, String newPasswrd, String confirmPassword});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object? oddPassword = freezed,
    Object? newPasswrd = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_ChangePassword(
      oddPassword == freezed
          ? _value.oddPassword
          : oddPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswrd == freezed
          ? _value.newPasswrd
          : newPasswrd // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(
      this.oddPassword, this.newPasswrd, this.confirmPassword);

  @override
  final String oddPassword;
  @override
  final String newPasswrd;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SecurityEvent.changePassword(oddPassword: $oddPassword, newPasswrd: $newPasswrd, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePassword &&
            const DeepCollectionEquality()
                .equals(other.oddPassword, oddPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPasswrd, newPasswrd) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oddPassword),
      const DeepCollectionEquality().hash(newPasswrd),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) changePhoneNumber,
    required TResult Function(String otpId, String otpCode)
        changePhoneNumberConfirmOTP,
    required TResult Function(String email) changeEmail,
    required TResult Function(String otpId, String otpCode)
        changeEmailConfirmOTP,
    required TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)
        changePassword,
  }) {
    return changePassword(oddPassword, newPasswrd, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
  }) {
    return changePassword?.call(oddPassword, newPasswrd, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? changePhoneNumber,
    TResult Function(String otpId, String otpCode)? changePhoneNumberConfirmOTP,
    TResult Function(String email)? changeEmail,
    TResult Function(String otpId, String otpCode)? changeEmailConfirmOTP,
    TResult Function(
            String oddPassword, String newPasswrd, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oddPassword, newPasswrd, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePhoneNumber value) changePhoneNumber,
    required TResult Function(_ChangePhoneNumberConfirmOTP value)
        changePhoneNumberConfirmOTP,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeEmailConfirmOTP value)
        changeEmailConfirmOTP,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePhoneNumber value)? changePhoneNumber,
    TResult Function(_ChangePhoneNumberConfirmOTP value)?
        changePhoneNumberConfirmOTP,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeEmailConfirmOTP value)? changeEmailConfirmOTP,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements SecurityEvent {
  const factory _ChangePassword(
          String oddPassword, String newPasswrd, String confirmPassword) =
      _$_ChangePassword;

  String get oddPassword;
  String get newPasswrd;
  String get confirmPassword;
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecurityStateTearOff {
  const _$SecurityStateTearOff();

  _SecurityState call(
      {String? otpId, required AppState status, String? error}) {
    return _SecurityState(
      otpId: otpId,
      status: status,
      error: error,
    );
  }
}

/// @nodoc
const $SecurityState = _$SecurityStateTearOff();

/// @nodoc
mixin _$SecurityState {
  String? get otpId => throw _privateConstructorUsedError;
  AppState get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecurityStateCopyWith<SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityStateCopyWith<$Res> {
  factory $SecurityStateCopyWith(
          SecurityState value, $Res Function(SecurityState) then) =
      _$SecurityStateCopyWithImpl<$Res>;
  $Res call({String? otpId, AppState status, String? error});
}

/// @nodoc
class _$SecurityStateCopyWithImpl<$Res>
    implements $SecurityStateCopyWith<$Res> {
  _$SecurityStateCopyWithImpl(this._value, this._then);

  final SecurityState _value;
  // ignore: unused_field
  final $Res Function(SecurityState) _then;

  @override
  $Res call({
    Object? otpId = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SecurityStateCopyWith<$Res>
    implements $SecurityStateCopyWith<$Res> {
  factory _$SecurityStateCopyWith(
          _SecurityState value, $Res Function(_SecurityState) then) =
      __$SecurityStateCopyWithImpl<$Res>;
  @override
  $Res call({String? otpId, AppState status, String? error});
}

/// @nodoc
class __$SecurityStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements _$SecurityStateCopyWith<$Res> {
  __$SecurityStateCopyWithImpl(
      _SecurityState _value, $Res Function(_SecurityState) _then)
      : super(_value, (v) => _then(v as _SecurityState));

  @override
  _SecurityState get _value => super._value as _SecurityState;

  @override
  $Res call({
    Object? otpId = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_SecurityState(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SecurityState implements _SecurityState {
  _$_SecurityState({this.otpId, required this.status, this.error});

  @override
  final String? otpId;
  @override
  final AppState status;
  @override
  final String? error;

  @override
  String toString() {
    return 'SecurityState(otpId: $otpId, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecurityState &&
            const DeepCollectionEquality().equals(other.otpId, otpId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(otpId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$SecurityStateCopyWith<_SecurityState> get copyWith =>
      __$SecurityStateCopyWithImpl<_SecurityState>(this, _$identity);
}

abstract class _SecurityState implements SecurityState {
  factory _SecurityState(
      {String? otpId,
      required AppState status,
      String? error}) = _$_SecurityState;

  @override
  String? get otpId;
  @override
  AppState get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$SecurityStateCopyWith<_SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}
