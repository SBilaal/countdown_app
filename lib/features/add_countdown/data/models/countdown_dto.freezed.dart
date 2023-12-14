// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountdownDTO {
  DateTime get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get iconIndex => throw _privateConstructorUsedError;
  int get colorIndex => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountdownDTOCopyWith<CountdownDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownDTOCopyWith<$Res> {
  factory $CountdownDTOCopyWith(
          CountdownDTO value, $Res Function(CountdownDTO) then) =
      _$CountdownDTOCopyWithImpl<$Res>;
  $Res call(
      {DateTime date, String title, int iconIndex, int colorIndex, String id});
}

/// @nodoc
class _$CountdownDTOCopyWithImpl<$Res> implements $CountdownDTOCopyWith<$Res> {
  _$CountdownDTOCopyWithImpl(this._value, this._then);

  final CountdownDTO _value;
  // ignore: unused_field
  final $Res Function(CountdownDTO) _then;

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
abstract class _$$_CountdownDTOCopyWith<$Res>
    implements $CountdownDTOCopyWith<$Res> {
  factory _$$_CountdownDTOCopyWith(
          _$_CountdownDTO value, $Res Function(_$_CountdownDTO) then) =
      __$$_CountdownDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date, String title, int iconIndex, int colorIndex, String id});
}

/// @nodoc
class __$$_CountdownDTOCopyWithImpl<$Res>
    extends _$CountdownDTOCopyWithImpl<$Res>
    implements _$$_CountdownDTOCopyWith<$Res> {
  __$$_CountdownDTOCopyWithImpl(
      _$_CountdownDTO _value, $Res Function(_$_CountdownDTO) _then)
      : super(_value, (v) => _then(v as _$_CountdownDTO));

  @override
  _$_CountdownDTO get _value => super._value as _$_CountdownDTO;

  @override
  $Res call({
    Object? date = freezed,
    Object? title = freezed,
    Object? iconIndex = freezed,
    Object? colorIndex = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_CountdownDTO(
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

class _$_CountdownDTO extends _CountdownDTO with DiagnosticableTreeMixin {
  const _$_CountdownDTO(
      {required this.date,
      required this.title,
      required this.iconIndex,
      required this.colorIndex,
      required this.id})
      : super._();

  @override
  final DateTime date;
  @override
  final String title;
  @override
  final int iconIndex;
  @override
  final int colorIndex;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountdownDTO(date: $date, title: $title, iconIndex: $iconIndex, colorIndex: $colorIndex, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountdownDTO'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('iconIndex', iconIndex))
      ..add(DiagnosticsProperty('colorIndex', colorIndex))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountdownDTO &&
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
  _$$_CountdownDTOCopyWith<_$_CountdownDTO> get copyWith =>
      __$$_CountdownDTOCopyWithImpl<_$_CountdownDTO>(this, _$identity);
}

abstract class _CountdownDTO extends CountdownDTO {
  const factory _CountdownDTO(
      {required final DateTime date,
      required final String title,
      required final int iconIndex,
      required final int colorIndex,
      required final String id}) = _$_CountdownDTO;
  const _CountdownDTO._() : super._();

  @override
  DateTime get date;
  @override
  String get title;
  @override
  int get iconIndex;
  @override
  int get colorIndex;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CountdownDTOCopyWith<_$_CountdownDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
