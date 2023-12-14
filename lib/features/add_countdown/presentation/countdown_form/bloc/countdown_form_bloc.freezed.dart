// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountdownFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownFormEventCopyWith<$Res> {
  factory $CountdownFormEventCopyWith(
          CountdownFormEvent value, $Res Function(CountdownFormEvent) then) =
      _$CountdownFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownFormEventCopyWithImpl<$Res>
    implements $CountdownFormEventCopyWith<$Res> {
  _$CountdownFormEventCopyWithImpl(this._value, this._then);

  final CountdownFormEvent _value;
  // ignore: unused_field
  final $Res Function(CountdownFormEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  $Res call({Countdown? countdown});

  $CountdownCopyWith<$Res>? get countdown;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? countdown = freezed,
  }) {
    return _then(_$_Initialized(
      countdown == freezed
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as Countdown?,
    ));
  }

  @override
  $CountdownCopyWith<$Res>? get countdown {
    if (_value.countdown == null) {
      return null;
    }

    return $CountdownCopyWith<$Res>(_value.countdown!, (value) {
      return _then(_value.copyWith(countdown: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized([this.countdown]);

  @override
  final Countdown? countdown;

  @override
  String toString() {
    return 'CountdownFormEvent.initialized(countdown: $countdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other.countdown, countdown));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(countdown));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return initialized(countdown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return initialized?.call(countdown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(countdown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CountdownFormEvent {
  const factory _Initialized([final Countdown? countdown]) = _$_Initialized;

  Countdown? get countdown;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleChanged));

  @override
  _$_TitleChanged get _value => super._value as _$_TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleChanged(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CountdownFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements CountdownFormEvent {
  const factory _TitleChanged({required final String title}) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CountdownCreatedCopyWith<$Res> {
  factory _$$_CountdownCreatedCopyWith(
          _$_CountdownCreated value, $Res Function(_$_CountdownCreated) then) =
      __$$_CountdownCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountdownCreatedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_CountdownCreatedCopyWith<$Res> {
  __$$_CountdownCreatedCopyWithImpl(
      _$_CountdownCreated _value, $Res Function(_$_CountdownCreated) _then)
      : super(_value, (v) => _then(v as _$_CountdownCreated));

  @override
  _$_CountdownCreated get _value => super._value as _$_CountdownCreated;
}

/// @nodoc

class _$_CountdownCreated implements _CountdownCreated {
  const _$_CountdownCreated();

  @override
  String toString() {
    return 'CountdownFormEvent.countdownCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountdownCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return countdownCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return countdownCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (countdownCreated != null) {
      return countdownCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return countdownCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return countdownCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (countdownCreated != null) {
      return countdownCreated(this);
    }
    return orElse();
  }
}

abstract class _CountdownCreated implements CountdownFormEvent {
  const factory _CountdownCreated() = _$_CountdownCreated;
}

/// @nodoc
abstract class _$$_DateSelectedCopyWith<$Res> {
  factory _$$_DateSelectedCopyWith(
          _$_DateSelected value, $Res Function(_$_DateSelected) then) =
      __$$_DateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$_DateSelectedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_DateSelectedCopyWith<$Res> {
  __$$_DateSelectedCopyWithImpl(
      _$_DateSelected _value, $Res Function(_$_DateSelected) _then)
      : super(_value, (v) => _then(v as _$_DateSelected));

  @override
  _$_DateSelected get _value => super._value as _$_DateSelected;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_DateSelected(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'CountdownFormEvent.dateSelected(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateSelected &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      __$$_DateSelectedCopyWithImpl<_$_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return dateSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return dateSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements CountdownFormEvent {
  const factory _DateSelected({required final DateTime date}) = _$_DateSelected;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeSelectedCopyWith<$Res> {
  factory _$$_TimeSelectedCopyWith(
          _$_TimeSelected value, $Res Function(_$_TimeSelected) then) =
      __$$_TimeSelectedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$_TimeSelectedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_TimeSelectedCopyWith<$Res> {
  __$$_TimeSelectedCopyWithImpl(
      _$_TimeSelected _value, $Res Function(_$_TimeSelected) _then)
      : super(_value, (v) => _then(v as _$_TimeSelected));

  @override
  _$_TimeSelected get _value => super._value as _$_TimeSelected;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_$_TimeSelected(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_TimeSelected implements _TimeSelected {
  const _$_TimeSelected({required this.time});

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'CountdownFormEvent.timeSelected(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSelected &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_TimeSelectedCopyWith<_$_TimeSelected> get copyWith =>
      __$$_TimeSelectedCopyWithImpl<_$_TimeSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return timeSelected(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return timeSelected?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return timeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return timeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(this);
    }
    return orElse();
  }
}

abstract class _TimeSelected implements CountdownFormEvent {
  const factory _TimeSelected({required final TimeOfDay time}) =
      _$_TimeSelected;

  TimeOfDay get time;
  @JsonKey(ignore: true)
  _$$_TimeSelectedCopyWith<_$_TimeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IconSelectedCopyWith<$Res> {
  factory _$$_IconSelectedCopyWith(
          _$_IconSelected value, $Res Function(_$_IconSelected) then) =
      __$$_IconSelectedCopyWithImpl<$Res>;
  $Res call({int iconIndex});
}

/// @nodoc
class __$$_IconSelectedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_IconSelectedCopyWith<$Res> {
  __$$_IconSelectedCopyWithImpl(
      _$_IconSelected _value, $Res Function(_$_IconSelected) _then)
      : super(_value, (v) => _then(v as _$_IconSelected));

  @override
  _$_IconSelected get _value => super._value as _$_IconSelected;

  @override
  $Res call({
    Object? iconIndex = freezed,
  }) {
    return _then(_$_IconSelected(
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IconSelected implements _IconSelected {
  const _$_IconSelected({required this.iconIndex});

  @override
  final int iconIndex;

  @override
  String toString() {
    return 'CountdownFormEvent.iconSelected(iconIndex: $iconIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IconSelected &&
            const DeepCollectionEquality().equals(other.iconIndex, iconIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(iconIndex));

  @JsonKey(ignore: true)
  @override
  _$$_IconSelectedCopyWith<_$_IconSelected> get copyWith =>
      __$$_IconSelectedCopyWithImpl<_$_IconSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return iconSelected(iconIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return iconSelected?.call(iconIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (iconSelected != null) {
      return iconSelected(iconIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return iconSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return iconSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (iconSelected != null) {
      return iconSelected(this);
    }
    return orElse();
  }
}

abstract class _IconSelected implements CountdownFormEvent {
  const factory _IconSelected({required final int iconIndex}) = _$_IconSelected;

  int get iconIndex;
  @JsonKey(ignore: true)
  _$$_IconSelectedCopyWith<_$_IconSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'CountdownFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CountdownFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$$_ColorSelectedCopyWith<$Res> {
  factory _$$_ColorSelectedCopyWith(
          _$_ColorSelected value, $Res Function(_$_ColorSelected) then) =
      __$$_ColorSelectedCopyWithImpl<$Res>;
  $Res call({int colorIndex});
}

/// @nodoc
class __$$_ColorSelectedCopyWithImpl<$Res>
    extends _$CountdownFormEventCopyWithImpl<$Res>
    implements _$$_ColorSelectedCopyWith<$Res> {
  __$$_ColorSelectedCopyWithImpl(
      _$_ColorSelected _value, $Res Function(_$_ColorSelected) _then)
      : super(_value, (v) => _then(v as _$_ColorSelected));

  @override
  _$_ColorSelected get _value => super._value as _$_ColorSelected;

  @override
  $Res call({
    Object? colorIndex = freezed,
  }) {
    return _then(_$_ColorSelected(
      colorIndex: colorIndex == freezed
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ColorSelected implements _ColorSelected {
  const _$_ColorSelected({required this.colorIndex});

  @override
  final int colorIndex;

  @override
  String toString() {
    return 'CountdownFormEvent.colorSelected(colorIndex: $colorIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorSelected &&
            const DeepCollectionEquality()
                .equals(other.colorIndex, colorIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(colorIndex));

  @JsonKey(ignore: true)
  @override
  _$$_ColorSelectedCopyWith<_$_ColorSelected> get copyWith =>
      __$$_ColorSelectedCopyWithImpl<_$_ColorSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Countdown? countdown) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function() countdownCreated,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function(TimeOfDay time) timeSelected,
    required TResult Function(int iconIndex) iconSelected,
    required TResult Function() saved,
    required TResult Function(int colorIndex) colorSelected,
  }) {
    return colorSelected(colorIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
  }) {
    return colorSelected?.call(colorIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Countdown? countdown)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function()? countdownCreated,
    TResult Function(DateTime date)? dateSelected,
    TResult Function(TimeOfDay time)? timeSelected,
    TResult Function(int iconIndex)? iconSelected,
    TResult Function()? saved,
    TResult Function(int colorIndex)? colorSelected,
    required TResult orElse(),
  }) {
    if (colorSelected != null) {
      return colorSelected(colorIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CountdownCreated value) countdownCreated,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_IconSelected value) iconSelected,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ColorSelected value) colorSelected,
  }) {
    return colorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
  }) {
    return colorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CountdownCreated value)? countdownCreated,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_IconSelected value)? iconSelected,
    TResult Function(_Saved value)? saved,
    TResult Function(_ColorSelected value)? colorSelected,
    required TResult orElse(),
  }) {
    if (colorSelected != null) {
      return colorSelected(this);
    }
    return orElse();
  }
}

abstract class _ColorSelected implements CountdownFormEvent {
  const factory _ColorSelected({required final int colorIndex}) =
      _$_ColorSelected;

  int get colorIndex;
  @JsonKey(ignore: true)
  _$$_ColorSelectedCopyWith<_$_ColorSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountdownFormState {
  Countdown get countdown => throw _privateConstructorUsedError;
  bool get isFormButtonPressed => throw _privateConstructorUsedError;
  bool get isDateSelected => throw _privateConstructorUsedError;
  bool get isTimeSelected => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  int? get selectedCountdownIndex => throw _privateConstructorUsedError;
  Response<dynamic>? get failureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountdownFormStateCopyWith<CountdownFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownFormStateCopyWith<$Res> {
  factory $CountdownFormStateCopyWith(
          CountdownFormState value, $Res Function(CountdownFormState) then) =
      _$CountdownFormStateCopyWithImpl<$Res>;
  $Res call(
      {Countdown countdown,
      bool isFormButtonPressed,
      bool isDateSelected,
      bool isTimeSelected,
      bool isSaving,
      bool isEditing,
      int? selectedCountdownIndex,
      Response<dynamic>? failureOrSuccess});

  $CountdownCopyWith<$Res> get countdown;
  $ResponseCopyWith<dynamic, $Res>? get failureOrSuccess;
}

/// @nodoc
class _$CountdownFormStateCopyWithImpl<$Res>
    implements $CountdownFormStateCopyWith<$Res> {
  _$CountdownFormStateCopyWithImpl(this._value, this._then);

  final CountdownFormState _value;
  // ignore: unused_field
  final $Res Function(CountdownFormState) _then;

  @override
  $Res call({
    Object? countdown = freezed,
    Object? isFormButtonPressed = freezed,
    Object? isDateSelected = freezed,
    Object? isTimeSelected = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? selectedCountdownIndex = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      countdown: countdown == freezed
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as Countdown,
      isFormButtonPressed: isFormButtonPressed == freezed
          ? _value.isFormButtonPressed
          : isFormButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDateSelected: isDateSelected == freezed
          ? _value.isDateSelected
          : isDateSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimeSelected: isTimeSelected == freezed
          ? _value.isTimeSelected
          : isTimeSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCountdownIndex: selectedCountdownIndex == freezed
          ? _value.selectedCountdownIndex
          : selectedCountdownIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }

  @override
  $CountdownCopyWith<$Res> get countdown {
    return $CountdownCopyWith<$Res>(_value.countdown, (value) {
      return _then(_value.copyWith(countdown: value));
    });
  }

  @override
  $ResponseCopyWith<dynamic, $Res>? get failureOrSuccess {
    if (_value.failureOrSuccess == null) {
      return null;
    }

    return $ResponseCopyWith<dynamic, $Res>(_value.failureOrSuccess!, (value) {
      return _then(_value.copyWith(failureOrSuccess: value));
    });
  }
}

/// @nodoc
abstract class _$$_CountdownCreatorStateCopyWith<$Res>
    implements $CountdownFormStateCopyWith<$Res> {
  factory _$$_CountdownCreatorStateCopyWith(_$_CountdownCreatorState value,
          $Res Function(_$_CountdownCreatorState) then) =
      __$$_CountdownCreatorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Countdown countdown,
      bool isFormButtonPressed,
      bool isDateSelected,
      bool isTimeSelected,
      bool isSaving,
      bool isEditing,
      int? selectedCountdownIndex,
      Response<dynamic>? failureOrSuccess});

  @override
  $CountdownCopyWith<$Res> get countdown;
  @override
  $ResponseCopyWith<dynamic, $Res>? get failureOrSuccess;
}

/// @nodoc
class __$$_CountdownCreatorStateCopyWithImpl<$Res>
    extends _$CountdownFormStateCopyWithImpl<$Res>
    implements _$$_CountdownCreatorStateCopyWith<$Res> {
  __$$_CountdownCreatorStateCopyWithImpl(_$_CountdownCreatorState _value,
      $Res Function(_$_CountdownCreatorState) _then)
      : super(_value, (v) => _then(v as _$_CountdownCreatorState));

  @override
  _$_CountdownCreatorState get _value =>
      super._value as _$_CountdownCreatorState;

  @override
  $Res call({
    Object? countdown = freezed,
    Object? isFormButtonPressed = freezed,
    Object? isDateSelected = freezed,
    Object? isTimeSelected = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? selectedCountdownIndex = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_$_CountdownCreatorState(
      countdown: countdown == freezed
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as Countdown,
      isFormButtonPressed: isFormButtonPressed == freezed
          ? _value.isFormButtonPressed
          : isFormButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDateSelected: isDateSelected == freezed
          ? _value.isDateSelected
          : isDateSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimeSelected: isTimeSelected == freezed
          ? _value.isTimeSelected
          : isTimeSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCountdownIndex: selectedCountdownIndex == freezed
          ? _value.selectedCountdownIndex
          : selectedCountdownIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_CountdownCreatorState implements _CountdownCreatorState {
  const _$_CountdownCreatorState(
      {required this.countdown,
      required this.isFormButtonPressed,
      required this.isDateSelected,
      required this.isTimeSelected,
      required this.isSaving,
      required this.isEditing,
      required this.selectedCountdownIndex,
      required this.failureOrSuccess});

  @override
  final Countdown countdown;
  @override
  final bool isFormButtonPressed;
  @override
  final bool isDateSelected;
  @override
  final bool isTimeSelected;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final int? selectedCountdownIndex;
  @override
  final Response<dynamic>? failureOrSuccess;

  @override
  String toString() {
    return 'CountdownFormState(countdown: $countdown, isFormButtonPressed: $isFormButtonPressed, isDateSelected: $isDateSelected, isTimeSelected: $isTimeSelected, isSaving: $isSaving, isEditing: $isEditing, selectedCountdownIndex: $selectedCountdownIndex, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountdownCreatorState &&
            const DeepCollectionEquality().equals(other.countdown, countdown) &&
            const DeepCollectionEquality()
                .equals(other.isFormButtonPressed, isFormButtonPressed) &&
            const DeepCollectionEquality()
                .equals(other.isDateSelected, isDateSelected) &&
            const DeepCollectionEquality()
                .equals(other.isTimeSelected, isTimeSelected) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.selectedCountdownIndex, selectedCountdownIndex) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countdown),
      const DeepCollectionEquality().hash(isFormButtonPressed),
      const DeepCollectionEquality().hash(isDateSelected),
      const DeepCollectionEquality().hash(isTimeSelected),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(selectedCountdownIndex),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_CountdownCreatorStateCopyWith<_$_CountdownCreatorState> get copyWith =>
      __$$_CountdownCreatorStateCopyWithImpl<_$_CountdownCreatorState>(
          this, _$identity);
}

abstract class _CountdownCreatorState implements CountdownFormState {
  const factory _CountdownCreatorState(
          {required final Countdown countdown,
          required final bool isFormButtonPressed,
          required final bool isDateSelected,
          required final bool isTimeSelected,
          required final bool isSaving,
          required final bool isEditing,
          required final int? selectedCountdownIndex,
          required final Response<dynamic>? failureOrSuccess}) =
      _$_CountdownCreatorState;

  @override
  Countdown get countdown;
  @override
  bool get isFormButtonPressed;
  @override
  bool get isDateSelected;
  @override
  bool get isTimeSelected;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  int? get selectedCountdownIndex;
  @override
  Response<dynamic>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_CountdownCreatorStateCopyWith<_$_CountdownCreatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
