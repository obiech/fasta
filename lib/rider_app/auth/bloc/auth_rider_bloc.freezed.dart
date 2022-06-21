// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_rider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthRiderEventTearOff {
  const _$AuthRiderEventTearOff();

  _Started started() {
    return const _Started();
  }

  __Login login({required String email, required String password}) {
    return __Login(
      email: email,
      password: password,
    );
  }

  _Register register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber}) {
    return _Register(
      fullName: fullName,
      email: email,
      password: password,
      state: state,
      city: city,
      phoneNumber: phoneNumber,
    );
  }

  _RegisterAsDriver registerAsDriver() {
    return const _RegisterAsDriver();
  }

  _UpdateLicenceInfo updateLicenceInfo(
      {required String expireDate, required String licenceNumber}) {
    return _UpdateLicenceInfo(
      expireDate: expireDate,
      licenceNumber: licenceNumber,
    );
  }

  _UpdateDriverVehicle updateDriverVehicle({required VehicleArg arg}) {
    return _UpdateDriverVehicle(
      arg: arg,
    );
  }

  _UploadVehicleImage uploadVehicleImage({required FormData image}) {
    return _UploadVehicleImage(
      image: image,
    );
  }
}

/// @nodoc
const $AuthRiderEvent = _$AuthRiderEventTearOff();

/// @nodoc
mixin _$AuthRiderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRiderEventCopyWith<$Res> {
  factory $AuthRiderEventCopyWith(
          AuthRiderEvent value, $Res Function(AuthRiderEvent) then) =
      _$AuthRiderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthRiderEventCopyWithImpl<$Res>
    implements $AuthRiderEventCopyWith<$Res> {
  _$AuthRiderEventCopyWithImpl(this._value, this._then);

  final AuthRiderEvent _value;
  // ignore: unused_field
  final $Res Function(AuthRiderEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthRiderEventCopyWithImpl<$Res>
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
    return 'AuthRiderEvent.started()';
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
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
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
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthRiderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$_LoginCopyWith<$Res> {
  factory _$_LoginCopyWith(__Login value, $Res Function(__Login) then) =
      __$_LoginCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$_LoginCopyWithImpl<$Res> extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$_LoginCopyWith<$Res> {
  __$_LoginCopyWithImpl(__Login _value, $Res Function(__Login) _then)
      : super(_value, (v) => _then(v as __Login));

  @override
  __Login get _value => super._value as __Login;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(__Login(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$__Login implements __Login {
  const _$__Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthRiderEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __Login &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$_LoginCopyWith<__Login> get copyWith =>
      __$_LoginCopyWithImpl<__Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class __Login implements AuthRiderEvent {
  const factory __Login({required String email, required String password}) =
      _$__Login;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$_LoginCopyWith<__Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String email,
      String password,
      String state,
      String city,
      String phoneNumber});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_Register(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(
      {required this.fullName,
      required this.email,
      required this.password,
      required this.state,
      required this.city,
      required this.phoneNumber});

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String state;
  @override
  final String city;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthRiderEvent.register(fullName: $fullName, email: $email, password: $password, state: $state, city: $city, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return register(fullName, email, password, state, city, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return register?.call(fullName, email, password, state, city, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(fullName, email, password, state, city, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthRiderEvent {
  const factory _Register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber}) = _$_Register;

  String get fullName;
  String get email;
  String get password;
  String get state;
  String get city;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterAsDriverCopyWith<$Res> {
  factory _$RegisterAsDriverCopyWith(
          _RegisterAsDriver value, $Res Function(_RegisterAsDriver) then) =
      __$RegisterAsDriverCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterAsDriverCopyWithImpl<$Res>
    extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$RegisterAsDriverCopyWith<$Res> {
  __$RegisterAsDriverCopyWithImpl(
      _RegisterAsDriver _value, $Res Function(_RegisterAsDriver) _then)
      : super(_value, (v) => _then(v as _RegisterAsDriver));

  @override
  _RegisterAsDriver get _value => super._value as _RegisterAsDriver;
}

/// @nodoc

class _$_RegisterAsDriver implements _RegisterAsDriver {
  const _$_RegisterAsDriver();

  @override
  String toString() {
    return 'AuthRiderEvent.registerAsDriver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterAsDriver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return registerAsDriver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return registerAsDriver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (registerAsDriver != null) {
      return registerAsDriver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return registerAsDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return registerAsDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (registerAsDriver != null) {
      return registerAsDriver(this);
    }
    return orElse();
  }
}

abstract class _RegisterAsDriver implements AuthRiderEvent {
  const factory _RegisterAsDriver() = _$_RegisterAsDriver;
}

/// @nodoc
abstract class _$UpdateLicenceInfoCopyWith<$Res> {
  factory _$UpdateLicenceInfoCopyWith(
          _UpdateLicenceInfo value, $Res Function(_UpdateLicenceInfo) then) =
      __$UpdateLicenceInfoCopyWithImpl<$Res>;
  $Res call({String expireDate, String licenceNumber});
}

/// @nodoc
class __$UpdateLicenceInfoCopyWithImpl<$Res>
    extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$UpdateLicenceInfoCopyWith<$Res> {
  __$UpdateLicenceInfoCopyWithImpl(
      _UpdateLicenceInfo _value, $Res Function(_UpdateLicenceInfo) _then)
      : super(_value, (v) => _then(v as _UpdateLicenceInfo));

  @override
  _UpdateLicenceInfo get _value => super._value as _UpdateLicenceInfo;

  @override
  $Res call({
    Object? expireDate = freezed,
    Object? licenceNumber = freezed,
  }) {
    return _then(_UpdateLicenceInfo(
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String,
      licenceNumber: licenceNumber == freezed
          ? _value.licenceNumber
          : licenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateLicenceInfo implements _UpdateLicenceInfo {
  const _$_UpdateLicenceInfo(
      {required this.expireDate, required this.licenceNumber});

  @override
  final String expireDate;
  @override
  final String licenceNumber;

  @override
  String toString() {
    return 'AuthRiderEvent.updateLicenceInfo(expireDate: $expireDate, licenceNumber: $licenceNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateLicenceInfo &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate) &&
            const DeepCollectionEquality()
                .equals(other.licenceNumber, licenceNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expireDate),
      const DeepCollectionEquality().hash(licenceNumber));

  @JsonKey(ignore: true)
  @override
  _$UpdateLicenceInfoCopyWith<_UpdateLicenceInfo> get copyWith =>
      __$UpdateLicenceInfoCopyWithImpl<_UpdateLicenceInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return updateLicenceInfo(expireDate, licenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return updateLicenceInfo?.call(expireDate, licenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (updateLicenceInfo != null) {
      return updateLicenceInfo(expireDate, licenceNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return updateLicenceInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return updateLicenceInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (updateLicenceInfo != null) {
      return updateLicenceInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateLicenceInfo implements AuthRiderEvent {
  const factory _UpdateLicenceInfo(
      {required String expireDate,
      required String licenceNumber}) = _$_UpdateLicenceInfo;

  String get expireDate;
  String get licenceNumber;
  @JsonKey(ignore: true)
  _$UpdateLicenceInfoCopyWith<_UpdateLicenceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateDriverVehicleCopyWith<$Res> {
  factory _$UpdateDriverVehicleCopyWith(_UpdateDriverVehicle value,
          $Res Function(_UpdateDriverVehicle) then) =
      __$UpdateDriverVehicleCopyWithImpl<$Res>;
  $Res call({VehicleArg arg});
}

/// @nodoc
class __$UpdateDriverVehicleCopyWithImpl<$Res>
    extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$UpdateDriverVehicleCopyWith<$Res> {
  __$UpdateDriverVehicleCopyWithImpl(
      _UpdateDriverVehicle _value, $Res Function(_UpdateDriverVehicle) _then)
      : super(_value, (v) => _then(v as _UpdateDriverVehicle));

  @override
  _UpdateDriverVehicle get _value => super._value as _UpdateDriverVehicle;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_UpdateDriverVehicle(
      arg: arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as VehicleArg,
    ));
  }
}

/// @nodoc

class _$_UpdateDriverVehicle implements _UpdateDriverVehicle {
  const _$_UpdateDriverVehicle({required this.arg});

  @override
  final VehicleArg arg;

  @override
  String toString() {
    return 'AuthRiderEvent.updateDriverVehicle(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDriverVehicle &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$UpdateDriverVehicleCopyWith<_UpdateDriverVehicle> get copyWith =>
      __$UpdateDriverVehicleCopyWithImpl<_UpdateDriverVehicle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return updateDriverVehicle(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return updateDriverVehicle?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (updateDriverVehicle != null) {
      return updateDriverVehicle(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return updateDriverVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return updateDriverVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (updateDriverVehicle != null) {
      return updateDriverVehicle(this);
    }
    return orElse();
  }
}

abstract class _UpdateDriverVehicle implements AuthRiderEvent {
  const factory _UpdateDriverVehicle({required VehicleArg arg}) =
      _$_UpdateDriverVehicle;

  VehicleArg get arg;
  @JsonKey(ignore: true)
  _$UpdateDriverVehicleCopyWith<_UpdateDriverVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadVehicleImageCopyWith<$Res> {
  factory _$UploadVehicleImageCopyWith(
          _UploadVehicleImage value, $Res Function(_UploadVehicleImage) then) =
      __$UploadVehicleImageCopyWithImpl<$Res>;
  $Res call({FormData image});
}

/// @nodoc
class __$UploadVehicleImageCopyWithImpl<$Res>
    extends _$AuthRiderEventCopyWithImpl<$Res>
    implements _$UploadVehicleImageCopyWith<$Res> {
  __$UploadVehicleImageCopyWithImpl(
      _UploadVehicleImage _value, $Res Function(_UploadVehicleImage) _then)
      : super(_value, (v) => _then(v as _UploadVehicleImage));

  @override
  _UploadVehicleImage get _value => super._value as _UploadVehicleImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_UploadVehicleImage(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$_UploadVehicleImage implements _UploadVehicleImage {
  const _$_UploadVehicleImage({required this.image});

  @override
  final FormData image;

  @override
  String toString() {
    return 'AuthRiderEvent.uploadVehicleImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadVehicleImage &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$UploadVehicleImageCopyWith<_UploadVehicleImage> get copyWith =>
      __$UploadVehicleImageCopyWithImpl<_UploadVehicleImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)
        register,
    required TResult Function() registerAsDriver,
    required TResult Function(String expireDate, String licenceNumber)
        updateLicenceInfo,
    required TResult Function(VehicleArg arg) updateDriverVehicle,
    required TResult Function(FormData image) uploadVehicleImage,
  }) {
    return uploadVehicleImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
  }) {
    return uploadVehicleImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String fullName, String email, String password,
            String state, String city, String phoneNumber)?
        register,
    TResult Function()? registerAsDriver,
    TResult Function(String expireDate, String licenceNumber)?
        updateLicenceInfo,
    TResult Function(VehicleArg arg)? updateDriverVehicle,
    TResult Function(FormData image)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (uploadVehicleImage != null) {
      return uploadVehicleImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(__Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_RegisterAsDriver value) registerAsDriver,
    required TResult Function(_UpdateLicenceInfo value) updateLicenceInfo,
    required TResult Function(_UpdateDriverVehicle value) updateDriverVehicle,
    required TResult Function(_UploadVehicleImage value) uploadVehicleImage,
  }) {
    return uploadVehicleImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
  }) {
    return uploadVehicleImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(__Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_RegisterAsDriver value)? registerAsDriver,
    TResult Function(_UpdateLicenceInfo value)? updateLicenceInfo,
    TResult Function(_UpdateDriverVehicle value)? updateDriverVehicle,
    TResult Function(_UploadVehicleImage value)? uploadVehicleImage,
    required TResult orElse(),
  }) {
    if (uploadVehicleImage != null) {
      return uploadVehicleImage(this);
    }
    return orElse();
  }
}

abstract class _UploadVehicleImage implements AuthRiderEvent {
  const factory _UploadVehicleImage({required FormData image}) =
      _$_UploadVehicleImage;

  FormData get image;
  @JsonKey(ignore: true)
  _$UploadVehicleImageCopyWith<_UploadVehicleImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthRiderStateTearOff {
  const _$AuthRiderStateTearOff();

  _AuthRiderState call(
      {required AppState status, required String error, OTP? otp}) {
    return _AuthRiderState(
      status: status,
      error: error,
      otp: otp,
    );
  }
}

/// @nodoc
const $AuthRiderState = _$AuthRiderStateTearOff();

/// @nodoc
mixin _$AuthRiderState {
  AppState get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  OTP? get otp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthRiderStateCopyWith<AuthRiderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRiderStateCopyWith<$Res> {
  factory $AuthRiderStateCopyWith(
          AuthRiderState value, $Res Function(AuthRiderState) then) =
      _$AuthRiderStateCopyWithImpl<$Res>;
  $Res call({AppState status, String error, OTP? otp});
}

/// @nodoc
class _$AuthRiderStateCopyWithImpl<$Res>
    implements $AuthRiderStateCopyWith<$Res> {
  _$AuthRiderStateCopyWithImpl(this._value, this._then);

  final AuthRiderState _value;
  // ignore: unused_field
  final $Res Function(AuthRiderState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP?,
    ));
  }
}

/// @nodoc
abstract class _$AuthRiderStateCopyWith<$Res>
    implements $AuthRiderStateCopyWith<$Res> {
  factory _$AuthRiderStateCopyWith(
          _AuthRiderState value, $Res Function(_AuthRiderState) then) =
      __$AuthRiderStateCopyWithImpl<$Res>;
  @override
  $Res call({AppState status, String error, OTP? otp});
}

/// @nodoc
class __$AuthRiderStateCopyWithImpl<$Res>
    extends _$AuthRiderStateCopyWithImpl<$Res>
    implements _$AuthRiderStateCopyWith<$Res> {
  __$AuthRiderStateCopyWithImpl(
      _AuthRiderState _value, $Res Function(_AuthRiderState) _then)
      : super(_value, (v) => _then(v as _AuthRiderState));

  @override
  _AuthRiderState get _value => super._value as _AuthRiderState;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? otp = freezed,
  }) {
    return _then(_AuthRiderState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP?,
    ));
  }
}

/// @nodoc

class _$_AuthRiderState implements _AuthRiderState {
  _$_AuthRiderState({required this.status, required this.error, this.otp});

  @override
  final AppState status;
  @override
  final String error;
  @override
  final OTP? otp;

  @override
  String toString() {
    return 'AuthRiderState(status: $status, error: $error, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthRiderState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$AuthRiderStateCopyWith<_AuthRiderState> get copyWith =>
      __$AuthRiderStateCopyWithImpl<_AuthRiderState>(this, _$identity);
}

abstract class _AuthRiderState implements AuthRiderState {
  factory _AuthRiderState(
      {required AppState status,
      required String error,
      OTP? otp}) = _$_AuthRiderState;

  @override
  AppState get status;
  @override
  String get error;
  @override
  OTP? get otp;
  @override
  @JsonKey(ignore: true)
  _$AuthRiderStateCopyWith<_AuthRiderState> get copyWith =>
      throw _privateConstructorUsedError;
}
