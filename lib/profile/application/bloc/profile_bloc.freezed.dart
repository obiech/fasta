// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdateProfile updateProfile({required ProfileArg arg}) {
    return _UpdateProfile(
      arg: arg,
    );
  }

  _GetProfile getProfile() {
    return const _GetProfile();
  }

  _UpdateProfileAvater updateProfileAvater(Uint8List avater) {
    return _UpdateProfileAvater(
      avater,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfileArg arg) updateProfile,
    required TResult Function() getProfile,
    required TResult Function(Uint8List avater) updateProfileAvater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfileAvater value) updateProfileAvater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.started()';
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
    required TResult Function(ProfileArg arg) updateProfile,
    required TResult Function() getProfile,
    required TResult Function(Uint8List avater) updateProfileAvater,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
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
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfileAvater value) updateProfileAvater,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdateProfileCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(
          _UpdateProfile value, $Res Function(_UpdateProfile) then) =
      __$UpdateProfileCopyWithImpl<$Res>;
  $Res call({ProfileArg arg});
}

/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(
      _UpdateProfile _value, $Res Function(_UpdateProfile) _then)
      : super(_value, (v) => _then(v as _UpdateProfile));

  @override
  _UpdateProfile get _value => super._value as _UpdateProfile;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_UpdateProfile(
      arg: arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as ProfileArg,
    ));
  }
}

/// @nodoc

class _$_UpdateProfile implements _UpdateProfile {
  const _$_UpdateProfile({required this.arg});

  @override
  final ProfileArg arg;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfile &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileCopyWith<_UpdateProfile> get copyWith =>
      __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfileArg arg) updateProfile,
    required TResult Function() getProfile,
    required TResult Function(Uint8List avater) updateProfileAvater,
  }) {
    return updateProfile(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
  }) {
    return updateProfile?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfileAvater value) updateProfileAvater,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile({required ProfileArg arg}) = _$_UpdateProfile;

  ProfileArg get arg;
  @JsonKey(ignore: true)
  _$UpdateProfileCopyWith<_UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProfileCopyWith<$Res> {
  factory _$GetProfileCopyWith(
          _GetProfile value, $Res Function(_GetProfile) then) =
      __$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GetProfileCopyWith<$Res> {
  __$GetProfileCopyWithImpl(
      _GetProfile _value, $Res Function(_GetProfile) _then)
      : super(_value, (v) => _then(v as _GetProfile));

  @override
  _GetProfile get _value => super._value as _GetProfile;
}

/// @nodoc

class _$_GetProfile implements _GetProfile {
  const _$_GetProfile();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfileArg arg) updateProfile,
    required TResult Function() getProfile,
    required TResult Function(Uint8List avater) updateProfileAvater,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfileAvater value) updateProfileAvater,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile() = _$_GetProfile;
}

/// @nodoc
abstract class _$UpdateProfileAvaterCopyWith<$Res> {
  factory _$UpdateProfileAvaterCopyWith(_UpdateProfileAvater value,
          $Res Function(_UpdateProfileAvater) then) =
      __$UpdateProfileAvaterCopyWithImpl<$Res>;
  $Res call({Uint8List avater});
}

/// @nodoc
class __$UpdateProfileAvaterCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$UpdateProfileAvaterCopyWith<$Res> {
  __$UpdateProfileAvaterCopyWithImpl(
      _UpdateProfileAvater _value, $Res Function(_UpdateProfileAvater) _then)
      : super(_value, (v) => _then(v as _UpdateProfileAvater));

  @override
  _UpdateProfileAvater get _value => super._value as _UpdateProfileAvater;

  @override
  $Res call({
    Object? avater = freezed,
  }) {
    return _then(_UpdateProfileAvater(
      avater == freezed
          ? _value.avater
          : avater // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileAvater implements _UpdateProfileAvater {
  const _$_UpdateProfileAvater(this.avater);

  @override
  final Uint8List avater;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileAvater(avater: $avater)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileAvater &&
            const DeepCollectionEquality().equals(other.avater, avater));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(avater));

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileAvaterCopyWith<_UpdateProfileAvater> get copyWith =>
      __$UpdateProfileAvaterCopyWithImpl<_UpdateProfileAvater>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProfileArg arg) updateProfile,
    required TResult Function() getProfile,
    required TResult Function(Uint8List avater) updateProfileAvater,
  }) {
    return updateProfileAvater(avater);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
  }) {
    return updateProfileAvater?.call(avater);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProfileArg arg)? updateProfile,
    TResult Function()? getProfile,
    TResult Function(Uint8List avater)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (updateProfileAvater != null) {
      return updateProfileAvater(avater);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfileAvater value) updateProfileAvater,
  }) {
    return updateProfileAvater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
  }) {
    return updateProfileAvater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfileAvater value)? updateProfileAvater,
    required TResult orElse(),
  }) {
    if (updateProfileAvater != null) {
      return updateProfileAvater(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileAvater implements ProfileEvent {
  const factory _UpdateProfileAvater(Uint8List avater) = _$_UpdateProfileAvater;

  Uint8List get avater;
  @JsonKey(ignore: true)
  _$UpdateProfileAvaterCopyWith<_UpdateProfileAvater> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required AppState status, User? user, required String errorMessage}) {
    return _ProfileState(
      status: status,
      user: user,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  AppState get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({AppState status, User? user, String errorMessage});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({AppState status, User? user, String errorMessage});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_ProfileState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  _$_ProfileState(
      {required this.status, this.user, required this.errorMessage});

  @override
  final AppState status;
  @override
  final User? user;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileState(status: $status, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  factory _ProfileState(
      {required AppState status,
      User? user,
      required String errorMessage}) = _$_ProfileState;

  @override
  AppState get status;
  @override
  User? get user;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
