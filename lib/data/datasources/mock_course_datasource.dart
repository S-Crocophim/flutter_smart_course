import '../../common/models/course_model.dart';

class MockCourseDataSource {
  Future<List<CourseModel>> getCourses() async {
    // Simulating a network delay
    await Future.delayed(const Duration(milliseconds: 500)); 
    return _list;
  }

  static final List<CourseModel> _list = [
    CourseModel(
        id: 1, // Add ID
        name: "Data Science",
        description: "Launch your career in data science. A sweet-cource introduction to data science, develop and taught by leading professors.",
        university: "Jons Hopkins University",
        noOfCource: "17 courses",
        tag1: "Data science",
        tag2: "Machine Learning", title: null, imageUrl: null, duration: null),
    CourseModel(
        id: 2, // Add ID
        name: "Machine Learning",
        description: "This specialization from leading researchers at university of washington introduce to you to the exciting high-demand field of machine learning ",
        university: "University of washington",
        noOfCource: "8 courses",
        tag1: "Machine Learning",
        tag2: "Decision Tree", title: null, imageUrl: null, duration: null),
    CourseModel(
        id: 3, // Add ID
        name: "Big Data",
        description: "Drive better bussiness decision with an overview OF how big data is organised and intepreted. Apply insight to real-world problems and question",
        university: "Us San Diego",
        noOfCource: "10 courses",
        tag1: "Big Data",
        tag2: "Apache Spark", title: null, imageUrl: null, duration: null),
  ];
}