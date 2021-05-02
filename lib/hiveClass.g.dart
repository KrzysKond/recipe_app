// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveClass.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class hiveClassAdapter extends TypeAdapter<hiveClass> {
  @override
  final int typeId = 0;

  @override
  hiveClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return hiveClass(
      name: fields[0] as String,
      howToMake: fields[1] as String,
      ingredients: (fields[2] as List)?.cast<dynamic>(),
      asset: fields[3] as File,
    );
  }

  @override
  void write(BinaryWriter writer, hiveClass obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.howToMake)
      ..writeByte(2)
      ..write(obj.ingredients)
      ..writeByte(3)
      ..write(obj.asset);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is hiveClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
