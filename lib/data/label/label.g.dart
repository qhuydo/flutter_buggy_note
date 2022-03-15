// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LabelAdapter extends TypeAdapter<_$_Label> {
  @override
  final int typeId = 3;

  @override
  _$_Label read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Label(
      id: fields[0] as int,
      title: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Label obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LabelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
