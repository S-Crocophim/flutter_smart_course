import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

// Kita import kartu yang sudah kita recode
import 'course_preview_card.dart'; 

// Widget ini adalah satu baris horizontal berisi beberapa kartu
class FeaturedCoursesRow extends StatelessWidget {
  final String title;
  // Kita tambahkan parameter data agar setiap baris bisa berbeda
  final List<Map<String, dynamic>> courseData;
  
  const FeaturedCoursesRow({Key? key, required this.title, required this.courseData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColor.titleTextColor)),
              TextButton(onPressed: (){}, child: const Text("See All", style: TextStyle(color: AppColor.orange))),
            ],
          ),
        ),
        SizedBox(
          height: 230, // Memberikan tinggi yang cukup untuk kartu dan marginnya
          child: ListView.builder( // Menggunakan ListView.builder lebih efisien
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: courseData.length,
            itemBuilder: (context, index) {
              final course = courseData[index];
              return CoursePreviewCard(
                  primaryColor: course['primaryColor'],
                  backWidget: course['backWidget'],
                  chipColor: course['chipColor'],
                  title: course['title'],
                  courseCount: course['courseCount'],
                  isPrimaryCard: course['isPrimaryCard'],
                  imgPath: course['imgPath']
              );
            },
          ),
        )
      ],
    );
  }
}