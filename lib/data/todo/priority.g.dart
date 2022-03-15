// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriorityAdapter extends TypeAdapter<Priority> {
  @override
  final int typeId = 2;

  @override
  Priority read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Priority.priority1;
      case 1:
        return Priority.priority2;
      case 2:
        return Priority.priority3;
      case 3:
        return Priority.priority4;
      default:
        return Priority.priority1;
    }
  }

  @override
  void write(BinaryWriter writer, Priority obj) {
    switch (obj) {
      case Priority.priority1:
        writer.writeByte(0);
        break;
      case Priority.priority2:
        writer.writeByte(1);
        break;
      case Priority.priority3:
        writer.writeByte(2);
        break;
      case Priority.priority4:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriorityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
