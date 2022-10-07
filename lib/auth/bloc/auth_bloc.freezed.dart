// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
    required TResult Function() authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_LogoutButtonPressed value) logoutButtonPressed,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_LoginButtonPressedCopyWith<$Res> {
  factory _$$_LoginButtonPressedCopyWith(_$_LoginButtonPressed value,
          $Res Function(_$_LoginButtonPressed) then) =
      __$$_LoginButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_LoginButtonPressedCopyWith<$Res> {
  __$$_LoginButtonPressedCopyWithImpl(
      _$_LoginButtonPressed _value, $Res Function(_$_LoginButtonPressed) _then)
      : super(_value, (v) => _then(v as _$_LoginButtonPressed));

  @override
  _$_LoginButtonPressed get _value => super._value as _$_LoginButtonPressed;
}

/// @nodoc

class _$_LoginButtonPressed implements _LoginButtonPressed {
  const _$_LoginButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.loginButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
    required TResult Function() authCheckRequested,
  }) {
    return loginButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
  }) {
    return loginButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_LogoutButtonPressed value) logoutButtonPressed,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginButtonPressed implements AuthEvent {
  const factory _LoginButtonPressed() = _$_LoginButtonPressed;
}

/// @nodoc
abstract class _$$_LogoutButtonPressedCopyWith<$Res> {
  factory _$$_LogoutButtonPressedCopyWith(_$_LogoutButtonPressed value,
          $Res Function(_$_LogoutButtonPressed) then) =
      __$$_LogoutButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_LogoutButtonPressedCopyWith<$Res> {
  __$$_LogoutButtonPressedCopyWithImpl(_$_LogoutButtonPressed _value,
      $Res Function(_$_LogoutButtonPressed) _then)
      : super(_value, (v) => _then(v as _$_LogoutButtonPressed));

  @override
  _$_LogoutButtonPressed get _value => super._value as _$_LogoutButtonPressed;
}

/// @nodoc

class _$_LogoutButtonPressed implements _LogoutButtonPressed {
  const _$_LogoutButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.logoutButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
    required TResult Function() authCheckRequested,
  }) {
    return logoutButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
  }) {
    return logoutButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (logoutButtonPressed != null) {
      return logoutButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_LogoutButtonPressed value) logoutButtonPressed,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return logoutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return logoutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (logoutButtonPressed != null) {
      return logoutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LogoutButtonPressed implements AuthEvent {
  const factory _LogoutButtonPressed() = _$_LogoutButtonPressed;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthCheckRequestedCopyWith<$Res> {
  __$$_AuthCheckRequestedCopyWithImpl(
      _$_AuthCheckRequested _value, $Res Function(_$_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _$_AuthCheckRequested));

  @override
  _$_AuthCheckRequested get _value => super._value as _$_AuthCheckRequested;
}

/// @nodoc

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
    required TResult Function() authCheckRequested,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_LogoutButtonPressed value) logoutButtonPressed,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
mixin _$AuthState {
  bool? get isAuthenticated => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({bool? isAuthenticated, String? error, bool isLoading});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? isAuthenticated, String? error, bool isLoading});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, (v) => _then(v as _$_AuthState));

  @override
  _$_AuthState get _value => super._value as _$_AuthState;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_AuthState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isAuthenticated,
      required this.error,
      required this.isLoading});

  @override
  final bool? isAuthenticated;
  @override
  final String? error;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(isAuthenticated: $isAuthenticated, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            const DeepCollectionEquality()
                .equals(other.isAuthenticated, isAuthenticated) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAuthenticated),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool? isAuthenticated,
      required final String? error,
      required final bool isLoading}) = _$_AuthState;

  @override
  bool? get isAuthenticated;
  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
