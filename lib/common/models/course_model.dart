import 'package:hive/hive.dart';
part 'course_model.g.dart';

@HiveType(typeId: 0)
class CourseModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String description;
  
  @HiveField(2)
  final String university;
  
  @HiveField(3)
  final String noOfCource;
  
  @HiveField(4)
  final String tag1;
  
  @HiveField(5)
  final String tag2;
  
  @HiveField(6)
  final int id; 

  CourseModel({
    required this.id,
    required this.name,
    required this.description,
    required this.noOfCource,
    required this.university,
    required this.tag1,
    required this.tag2, required title, required imageUrl, required duration,
  });
}