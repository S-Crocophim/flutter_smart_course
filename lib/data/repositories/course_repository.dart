import 'package:hive_flutter/hive_flutter.dart';
import '../../common/models/course_model.dart';
import 'package:flutter_smart_course/data/datasources/mock_course_datasource.dart';

class CourseRepository {
  final MockCourseDataSource _mockDataSource;
  late final Box<CourseModel> _courseBox;

  CourseRepository(this._mockDataSource);
  
  Future<void> init() async {
    _courseBox = await Hive.openBox<CourseModel>('courses');
  }

  Future<List<CourseModel>> getRecommendedCourses() async {
    if (_courseBox.isEmpty) {
      final courses = await _mockDataSource.getCourses();
      await _courseBox.putAll({for (var c in courses) c.id: c});
      return courses;
    } else {
      return _courseBox.values.toList();
    }
  }
}