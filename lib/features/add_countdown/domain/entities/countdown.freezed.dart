// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Countdown {
  @HiveField(0)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  int get iconIndex => throw _privateConstructorUsedError;
  @HiveField(3)
  int get colorIndex => throw _privateConstructorUsedError;
  @HiveField(4)
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountdownCopyWith<Countdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownCopyWith<$Res> {
  factory $CountdownCopyWith(Countdown value, $Res Function(Countdown) then) =
      _$CountdownCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) DateTime date,
      @HiveField(1) String title,
      @HiveField(2) int iconIndex,
      @HiveField(3) int colorIndex,
      @HiveField(4) String id});
}

/// @nodoc
class _$CountdownCopyWithImpl<$Res> implements $CountdownCopyWith<$Res> {
  _$CountdownCopyWithImpl(this._value, this._then);

  final Countdown _value;
  // ignore: unused_field
  final $Res Function(Countdown) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? iconIndex = freezed,
    Object? colorIndex = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      colorIndex: colorIndex == freezed
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountdownCopyWith<$Res> implements $CountdownCopyWith<$Res> {
  factory _$$_CountdownCopyWith(
          _$_Countdown value, $Res Function(_$_Countdown) then) =
      __$$_CountdownCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) DateTime date,
      @HiveField(1) String title,
      @HiveField(2) int iconIndex,
      @HiveField(3) int colorIndex,
      @HiveField(4) String id});
}

/// @nodoc
class __$$_CountdownCopyWithImpl<$Res> extends _$CountdownCopyWithImpl<$Res>
    implements _$$_CountdownCopyWith<$Res> {
  __$$_CountdownCopyWithImpl(
      _$_Countdown _value, $Res Function(_$_Countdown) _then)
      : super(_value, (v) => _then(v as _$_Countdown));

  @override
  _$_Countdown get _value => super._value as _$_Countdown;

  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? iconIndex = freezed,
    Object? colorIndex = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Countdown(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      colorIndex: colorIndex == freezed
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0, adapterName: 'CountdownAdapter')
class _$_Countdown implements _Countdown {
  const _$_Countdown(
      {@HiveField(0) required this.date,
      @HiveField(1) required this.title,
      @HiveField(2) required this.iconIndex,
      @HiveField(3) required this.colorIndex,
      @HiveField(4) required this.id});

  @override
  @HiveField(0)
  final DateTime date;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final int iconIndex;
  @override
  @HiveField(3)
  final int colorIndex;
  @override
  @HiveField(4)
  final String id;

  @override
  String toString() {
    return 'Countdown(date: $date, title: $title, iconIndex: $iconIndex, colorIndex: $colorIndex, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Countdown &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.iconIndex, iconIndex) &&
            const DeepCollectionEquality()
                .equals(other.colorIndex, colorIndex) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(iconIndex),
      const DeepCollectionEquality().hash(colorIndex),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_CountdownCopyWith<_$_Countdown> get copyWith =>
      __$$_CountdownCopyWithImpl<_$_Countdown>(this, _$identity);
}

abstract class _Countdown implements Countdown {
  const factory _Countdown(
      {@HiveField(0) required final DateTime date,
      @HiveField(1) required final String title,
      @HiveField(2) required final int iconIndex,
      @HiveField(3) required final int colorIndex,
      @HiveField(4) required final String id}) = _$_Countdown;

  @override
  @HiveField(0)
  DateTime get date;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  int get iconIndex;
  @override
  @HiveField(3)
  int get colorIndex;
  @override
  @HiveField(4)
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CountdownCopyWith<_$_Countdown> get copyWith =>
      throw _privateConstructorUsedError;
}
