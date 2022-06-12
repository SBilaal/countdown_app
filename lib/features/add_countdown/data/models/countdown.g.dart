// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountdownAdapter extends TypeAdapter<Countdown> {
  @override
  final int typeId = 1;

  @override
  Countdown read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Countdown(
      date: fields[4] as DateTime,
      title: fields[1] as String,
      iconIndex: fields[2] as int,
      colorIndex: fields[3] as int,
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Countdown obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.iconIndex)
      ..writeByte(3)
      ..write(obj.colorIndex)
      ..writeByte(4)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountdownAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
