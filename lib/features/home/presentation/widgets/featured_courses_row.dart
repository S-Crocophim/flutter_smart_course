import 'package:flutter/material.dart';
import 'package:flutter_smart_course/features/home/presentation/widgets/course_preview_card.dart'; 
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

class FeaturedCoursesRow extends StatelessWidget {
  final String title;
  
  FeaturedCoursesRow({Key? key, required this.title}) : super(key: key);

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
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: const [
              CoursePreviewCard(
                title: 'Find the right degree for you',
                courseCount: '8 Courses',
                imageUrl: 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=2071&auto=format&fit=crop',
                chipColor: AppColor.orange,
              ),
              CoursePreviewCard(
                title: 'Become a data scientist',
                courseCount: '12 Courses',
                imageUrl: 'https://images.unsplash.com/photo-1552664730-d307ca884978?q=80&w=2070&auto=format&fit=crop',
                chipColor: AppColor.seeBlue,
              ),
               CoursePreviewCard(
                title: 'Become a digital marketer',
                courseCount: '10 Courses',
                imageUrl: 'https://images.unsplash.com/photo-1557426272-fc759fdf7a8d?q=80&w=2070&auto=format&fit=crop',
                chipColor: AppColor.purple,
              ),
            ],
          ).animate().slideX(begin: 0.5, end: 0, duration: 600.ms, curve: Curves.easeOut),
        )
      ],
    );
  }
}