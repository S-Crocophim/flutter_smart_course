import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_course/common/models/course_model.dart';
import 'package:flutter_smart_course/data/datasources/mock_course_datasource.dart';
import 'package:flutter_smart_course/data/repositories/course_repository.dart';

final mockDataSourceProvider = Provider((ref) => MockCourseDataSource());
final courseRepositoryProvider = FutureProvider<CourseRepository>((ref) async {
  final mockDataSource = ref.watch(mockDataSourceProvider);
  final repository = CourseRepository(mockDataSource);

  await repository.init();
  return repository;
});

final recommendedCoursesProvider = FutureProvider<List<CourseModel>>((ref) async {
  final repository = await ref.watch(courseRepositoryProvider.future);
  return repository.getRecommendedCourses();
});