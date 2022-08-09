// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(LogoutButtonPressed value) logoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
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
abstract class _$$LoginButtonPressedCopyWith<$Res> {
  factory _$$LoginButtonPressedCopyWith(_$LoginButtonPressed value,
          $Res Function(_$LoginButtonPressed) then) =
      __$$LoginButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LoginButtonPressedCopyWith<$Res> {
  __$$LoginButtonPressedCopyWithImpl(
      _$LoginButtonPressed _value, $Res Function(_$LoginButtonPressed) _then)
      : super(_value, (v) => _then(v as _$LoginButtonPressed));

  @override
  _$LoginButtonPressed get _value => super._value as _$LoginButtonPressed;
}

/// @nodoc

class _$LoginButtonPressed implements LoginButtonPressed {
  const _$LoginButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.loginButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
  }) {
    return loginButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
  }) {
    return loginButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
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
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(LogoutButtonPressed value) logoutButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LoginButtonPressed implements AuthEvent {
  const factory LoginButtonPressed() = _$LoginButtonPressed;
}

/// @nodoc
abstract class _$$LogoutButtonPressedCopyWith<$Res> {
  factory _$$LogoutButtonPressedCopyWith(_$LogoutButtonPressed value,
          $Res Function(_$LogoutButtonPressed) then) =
      __$$LogoutButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LogoutButtonPressedCopyWith<$Res> {
  __$$LogoutButtonPressedCopyWithImpl(
      _$LogoutButtonPressed _value, $Res Function(_$LogoutButtonPressed) _then)
      : super(_value, (v) => _then(v as _$LogoutButtonPressed));

  @override
  _$LogoutButtonPressed get _value => super._value as _$LogoutButtonPressed;
}

/// @nodoc

class _$LogoutButtonPressed implements LogoutButtonPressed {
  const _$LogoutButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.logoutButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginButtonPressed,
    required TResult Function() logoutButtonPressed,
  }) {
    return logoutButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
  }) {
    return logoutButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginButtonPressed,
    TResult Function()? logoutButtonPressed,
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
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
    required TResult Function(LogoutButtonPressed value) logoutButtonPressed,
  }) {
    return logoutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
  }) {
    return logoutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
    required TResult orElse(),
  }) {
    if (logoutButtonPressed != null) {
      return logoutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LogoutButtonPressed implements AuthEvent {
  const factory LogoutButtonPressed() = _$LogoutButtonPressed;
}
