// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveStorage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthHiveAdapter extends TypeAdapter<AuthHive> {
  @override
  final int typeId = 0;

  @override
  AuthHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthHive()
      ..accesstoken = fields[0] as String
      ..isAuthenticated = fields[1] as bool;
  }

  @override
  void write(BinaryWriter writer, AuthHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.accesstoken)
      ..writeByte(1)
      ..write(obj.isAuthenticated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
