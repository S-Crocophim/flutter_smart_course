import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';
import 'package:flutter_smart_course/common/widgets/decorative_backgrounds.dart'; 
import '../widgets/featured_courses_row.dart'; 
import '../widgets/course_preview_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<Map<String, dynamic>> featuredDataA = [
    {
      'primaryColor': AppColor.orange, 'backWidget': const DecorationA(primary: AppColor.lightOrange, top: -40, left: -50), 'chipColor': AppColor.orange, 'title': "Find the right degree for you", 'courseCount': "8 Courses", 'isPrimaryCard': true, 
      'imgPath': "https://picsum.photos/seed/1/200" 
    },
    {
      'primaryColor': Colors.white, 'backWidget': const DecorationB(), 'chipColor': AppColor.seeBlue, 'title': "Become a data scientist", 'courseCount': "8 Courses", 'isPrimaryCard': false, 
      'imgPath': "https://picsum.photos/seed/2/200" 
    },
    {
      'primaryColor': Colors.white, 'backWidget': const DecorationC(),'chipColor': AppColor.lightOrange, 'title': "Become a digital marketer", 'courseCount': "8 Courses", 'isPrimaryCard': false, 
      'imgPath': "https://picsum.photos/seed/3/200"
    }
  ];

   static final List<Map<String, dynamic>> featuredDataB = [
     {
      'primaryColor': AppColor.seeBlue, 'backWidget': const DecorationD(), 'chipColor': AppColor.seeBlue, 'title': "English for career development", 'courseCount': "8 Courses", 'isPrimaryCard': true, 
      'imgPath': "https://picsum.photos/seed/4/200"
    },
    {
      'primaryColor': Colors.white, 'backWidget': const DecorationB(),'chipColor': AppColor.lightpurple, 'title': "Bussiness foundation", 'courseCount': "8 Courses", 'isPrimaryCard': false, 
      'imgPath': "https://picsum.photos/seed/5/200"
    },
    {
      'primaryColor': Colors.white, 'backWidget': const DecorationC(),'chipColor': AppColor.lightOrange, 'title': "Excel skill for business", 'courseCount': "8 Courses", 'isPrimaryCard': false, 
      'imgPath': "https://picsum.photos/seed/6/200"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const _HomeHeader(),
          const SizedBox(height: 20),
          FeaturedCoursesRow(title: "Featured", courseData: featuredDataA),
          const SizedBox(height: 10),
          FeaturedCoursesRow(title: "Featured", courseData: featuredDataB),
        ],
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        height: 200,
        width: width,
        decoration: const BoxDecoration(color: AppColor.purple),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const Positioned(top: 30, right: -100, child: CircleAvatar(radius: 150, backgroundColor: AppColor.lightpurple)),
            Positioned(top: -100, left: -45, child: CircleAvatar(radius: width * .25, backgroundColor: AppColor.darkpurple)),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 40),
                     SizedBox(height: 10),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Search courses", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                          Icon(Icons.search, color: Colors.white, size: 30)
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("Type Something...", style: TextStyle(color: Colors.white54, fontSize: 30, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}