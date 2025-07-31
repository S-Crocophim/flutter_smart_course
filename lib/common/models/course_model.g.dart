part of 'course_model.dart';

class CourseModelAdapter extends TypeAdapter<CourseModel> {
  @override
  final int typeId = 0;

  @override
  CourseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseModel(
      id: fields[6] as int,
      name: fields[0] as String,
      description: fields[1] as String,
      noOfCource: fields[3] as String,
      university: fields[2] as String,
      tag1: fields[4] as String,
      tag2: fields[5] as String, title: null, imageUrl: null, duration: null,
    );
  }

  @override
  void write(BinaryWriter writer, CourseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.university)
      ..writeByte(3)
      ..write(obj.noOfCource)
      ..writeByte(4)
      ..write(obj.tag1)
      ..writeByte(5)
      ..write(obj.tag2)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
