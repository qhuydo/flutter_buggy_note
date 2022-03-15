// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<_$_Todo> {
  @override
  final int typeId = 0;

  @override
  _$_Todo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Todo(
      id: fields[0] as int,
      title: fields[1] as String,
      colour: fields[2] as int?,
      dueDate: fields[3] as DateTime?,
      priority: fields[4] as Priority,
      comment: fields[5] as String,
      status: fields[6] as TodoStatus,
      isArchived: fields[7] as dynamic,
      isRemoved: fields[8] as dynamic,
      order: fields[9] as int,
      labels: (fields[10] as List?)?.cast<Label>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Todo obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.colour)
      ..writeByte(3)
      ..write(obj.dueDate)
      ..writeByte(4)
      ..write(obj.priority)
      ..writeByte(5)
      ..write(obj.comment)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.isArchived)
      ..writeByte(8)
      ..write(obj.isRemoved)
      ..writeByte(9)
      ..write(obj.order)
      ..writeByte(10)
      ..write(obj.labels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
