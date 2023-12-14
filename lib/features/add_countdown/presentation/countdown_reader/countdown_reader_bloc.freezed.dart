// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountdownReaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readStarted,
    required TResult Function(Response<List<Countdown>> countdownsOrFailure)
        countdownsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadStarted value) readStarted,
    required TResult Function(_CountdownsReceived value) countdownsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownReaderEventCopyWith<$Res> {
  factory $CountdownReaderEventCopyWith(CountdownReaderEvent value,
          $Res Function(CountdownReaderEvent) then) =
      _$CountdownReaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownReaderEventCopyWithImpl<$Res>
    implements $CountdownReaderEventCopyWith<$Res> {
  _$CountdownReaderEventCopyWithImpl(this._value, this._then);

  final CountdownReaderEvent _value;
  // ignore: unused_field
  final $Res Function(CountdownReaderEvent) _then;
}

/// @nodoc
abstract class _$$_ReadStartedCopyWith<$Res> {
  factory _$$_ReadStartedCopyWith(
          _$_ReadStarted value, $Res Function(_$_ReadStarted) then) =
      __$$_ReadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadStartedCopyWithImpl<$Res>
    extends _$CountdownReaderEventCopyWithImpl<$Res>
    implements _$$_ReadStartedCopyWith<$Res> {
  __$$_ReadStartedCopyWithImpl(
      _$_ReadStarted _value, $Res Function(_$_ReadStarted) _then)
      : super(_value, (v) => _then(v as _$_ReadStarted));

  @override
  _$_ReadStarted get _value => super._value as _$_ReadStarted;
}

/// @nodoc

class _$_ReadStarted implements _ReadStarted {
  const _$_ReadStarted();

  @override
  String toString() {
    return 'CountdownReaderEvent.readStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readStarted,
    required TResult Function(Response<List<Countdown>> countdownsOrFailure)
        countdownsReceived,
  }) {
    return readStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
  }) {
    return readStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
    required TResult orElse(),
  }) {
    if (readStarted != null) {
      return readStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadStarted value) readStarted,
    required TResult Function(_CountdownsReceived value) countdownsReceived,
  }) {
    return readStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
  }) {
    return readStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
    required TResult orElse(),
  }) {
    if (readStarted != null) {
      return readStarted(this);
    }
    return orElse();
  }
}

abstract class _ReadStarted implements CountdownReaderEvent {
  const factory _ReadStarted() = _$_ReadStarted;
}

/// @nodoc
abstract class _$$_CountdownsReceivedCopyWith<$Res> {
  factory _$$_CountdownsReceivedCopyWith(_$_CountdownsReceived value,
          $Res Function(_$_CountdownsReceived) then) =
      __$$_CountdownsReceivedCopyWithImpl<$Res>;
  $Res call({Response<List<Countdown>> countdownsOrFailure});

  $ResponseCopyWith<List<Countdown>, $Res> get countdownsOrFailure;
}

/// @nodoc
class __$$_CountdownsReceivedCopyWithImpl<$Res>
    extends _$CountdownReaderEventCopyWithImpl<$Res>
    implements _$$_CountdownsReceivedCopyWith<$Res> {
  __$$_CountdownsReceivedCopyWithImpl(
      _$_CountdownsReceived _value, $Res Function(_$_CountdownsReceived) _then)
      : super(_value, (v) => _then(v as _$_CountdownsReceived));

  @override
  _$_CountdownsReceived get _value => super._value as _$_CountdownsReceived;

  @override
  $Res call({
    Object? countdownsOrFailure = freezed,
  }) {
    return _then(_$_CountdownsReceived(
      countdownsOrFailure: countdownsOrFailure == freezed
          ? _value.countdownsOrFailure
          : countdownsOrFailure // ignore: cast_nullable_to_non_nullable
              as Response<List<Countdown>>,
    ));
  }

  @override
  $ResponseCopyWith<List<Countdown>, $Res> get countdownsOrFailure {
    return $ResponseCopyWith<List<Countdown>, $Res>(_value.countdownsOrFailure,
        (value) {
      return _then(_value.copyWith(countdownsOrFailure: value));
    });
  }
}

/// @nodoc

class _$_CountdownsReceived implements _CountdownsReceived {
  const _$_CountdownsReceived({required this.countdownsOrFailure});

  @override
  final Response<List<Countdown>> countdownsOrFailure;

  @override
  String toString() {
    return 'CountdownReaderEvent.countdownsReceived(countdownsOrFailure: $countdownsOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountdownsReceived &&
            const DeepCollectionEquality()
                .equals(other.countdownsOrFailure, countdownsOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(countdownsOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_CountdownsReceivedCopyWith<_$_CountdownsReceived> get copyWith =>
      __$$_CountdownsReceivedCopyWithImpl<_$_CountdownsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readStarted,
    required TResult Function(Response<List<Countdown>> countdownsOrFailure)
        countdownsReceived,
  }) {
    return countdownsReceived(countdownsOrFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
  }) {
    return countdownsReceived?.call(countdownsOrFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readStarted,
    TResult Function(Response<List<Countdown>> countdownsOrFailure)?
        countdownsReceived,
    required TResult orElse(),
  }) {
    if (countdownsReceived != null) {
      return countdownsReceived(countdownsOrFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadStarted value) readStarted,
    required TResult Function(_CountdownsReceived value) countdownsReceived,
  }) {
    return countdownsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
  }) {
    return countdownsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadStarted value)? readStarted,
    TResult Function(_CountdownsReceived value)? countdownsReceived,
    required TResult orElse(),
  }) {
    if (countdownsReceived != null) {
      return countdownsReceived(this);
    }
    return orElse();
  }
}

abstract class _CountdownsReceived implements CountdownReaderEvent {
  const factory _CountdownsReceived(
          {required final Response<List<Countdown>> countdownsOrFailure}) =
      _$_CountdownsReceived;

  Response<List<Countdown>> get countdownsOrFailure;
  @JsonKey(ignore: true)
  _$$_CountdownsReceivedCopyWith<_$_CountdownsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountdownReaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Countdown> countdowns) data,
    required TResult Function(FirebaseFailures error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownReaderStateCopyWith<$Res> {
  factory $CountdownReaderStateCopyWith(CountdownReaderState value,
          $Res Function(CountdownReaderState) then) =
      _$CountdownReaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownReaderStateCopyWithImpl<$Res>
    implements $CountdownReaderStateCopyWith<$Res> {
  _$CountdownReaderStateCopyWithImpl(this._value, this._then);

  final CountdownReaderState _value;
  // ignore: unused_field
  final $Res Function(CountdownReaderState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CountdownReaderStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CountdownReaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Countdown> countdowns) data,
    required TResult Function(FirebaseFailures error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountdownReaderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CountdownReaderStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CountdownReaderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Countdown> countdowns) data,
    required TResult Function(FirebaseFailures error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CountdownReaderState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  $Res call({List<Countdown> countdowns});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$CountdownReaderStateCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? countdowns = freezed,
  }) {
    return _then(_$_Data(
      countdowns == freezed
          ? _value._countdowns
          : countdowns // ignore: cast_nullable_to_non_nullable
              as List<Countdown>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(final List<Countdown> countdowns) : _countdowns = countdowns;

  final List<Countdown> _countdowns;
  @override
  List<Countdown> get countdowns {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countdowns);
  }

  @override
  String toString() {
    return 'CountdownReaderState.data(countdowns: $countdowns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other._countdowns, _countdowns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_countdowns));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Countdown> countdowns) data,
    required TResult Function(FirebaseFailures error) error,
  }) {
    return data(countdowns);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
  }) {
    return data?.call(countdowns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(countdowns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements CountdownReaderState {
  const factory _Data(final List<Countdown> countdowns) = _$_Data;

  List<Countdown> get countdowns;
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({FirebaseFailures error});

  $FirebaseFailuresCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CountdownReaderStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FirebaseFailures,
    ));
  }

  @override
  $FirebaseFailuresCopyWith<$Res> get error {
    return $FirebaseFailuresCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final FirebaseFailures error;

  @override
  String toString() {
    return 'CountdownReaderState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Countdown> countdowns) data,
    required TResult Function(FirebaseFailures error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Countdown> countdowns)? data,
    TResult Function(FirebaseFailures error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CountdownReaderState {
  const factory _Error(final FirebaseFailures error) = _$_Error;

  FirebaseFailures get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
