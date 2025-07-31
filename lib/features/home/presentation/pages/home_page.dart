import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';
import 'package:flutter_smart_course/common/widgets/decorative_backgrounds.dart'; 
import '../widgets/featured_courses_row.dart'; 
import '../widgets/course_preview_card.dart'; // Impor kartu yang sudah kita recode


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Data untuk baris pertama (Featured)
  static final List<Map<String, dynamic>> featuredDataA = [
    {
      'primaryColor': AppColor.orange, 
      'backWidget': const DecorationA(primary: AppColor.lightOrange, top: 50, left: -30), 
      'chipColor': AppColor.orange, 
      'title': "Find the right degree for you", 
      'courseCount': "8 Courses", 
      'isPrimaryCard': true, 
      'imgPath': "https://d1mo3tzxttab3n.cloudfront.net/static/img/shop/560x580/vint0080.jpg"
    },
    {
      'primaryColor': Colors.white, 
      // ===> INI PERBAIKANNYA <===
      'backWidget': const DecorationB(), 
      'chipColor': AppColor.seeBlue, 
      'title': "Become a data scientist", 
      'courseCount': "8 Courses", 
      'isPrimaryCard': false, 
      'imgPath': "https://hips.hearstapps.com/esquireuk.cdnds.net/16/39/980x980/square-1475143834-david-gandy.jpg?resize=480:*"
    },
    {
      'primaryColor': Colors.white, 
      // ===> INI PERBAIKANNYA <===
      'backWidget': const DecorationC(),
      'chipColor': AppColor.lightOrange, 
      'title': "Become a digital marketer", 
      'courseCount': "8 Courses", 
      'isPrimaryCard': false, 
      'imgPath': "https://www.visafranchise.com/wp-content/uploads/2019/05/patrick-findaro-visa-franchise-square.jpg"
    }
  ];

  // Data untuk baris kedua (Popular/Featured)
   static final List<Map<String, dynamic>> featuredDataB = [
     {
      'primaryColor': AppColor.seeBlue, 
      // ===> INI PERBAIKANNYA <===
      'backWidget': const DecorationD(secondary: AppColor.lightseeBlue, secondaryAccent: AppColor.darkseeBlue), 
      'chipColor': AppColor.seeBlue, 'title': "English for career development", 
      'courseCount': "8 Courses", 
      'isPrimaryCard': true, 
      'imgPath': "https://www.reiss.com/media/product/946/218/silk-paisley-printed-pocket-square-mens-morocco-in-pink-red-20.jpg?format=jpeg&auto=webp&quality=85&width=1200&height=1200&fit=bounds"
    },
    {
      'primaryColor': Colors.white, 
      'backWidget': const SizedBox(), // Bisa dibiarkan kosong atau buat DecorationE
      'chipColor': AppColor.lightpurple, 
      'title': "Bussiness foundation", 
      'courseCount': "8 Courses", 'isPrimaryCard': false, 
      'imgPath': "https://i.dailymail.co.uk/i/pix/2016/08/05/19/36E9139400000578-3725856-image-a-58_1470422921868.jpg"
    },
    {
      'primaryColor': Colors.white, 
      'backWidget': const SizedBox(), // Bisa dibiarkan kosong atau buat DecorationF
      'chipColor': AppColor.lightOrange, 
      'title': "Excel skill for business", 
      'courseCount': "8 Courses", 
      'isPrimaryCard': false, 
      'imgPath': "https://www.reiss.com/media/product/945/066/03-2.jpg?format=jpeg&auto=webp&quality=85&width=632&height=725&fit=bounds"
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

// Widget _HomeHeader di bawah ini tidak perlu diubah.
class _HomeHeader extends StatelessWidget {
  const _HomeHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ... isinya sama seperti sebelumnya
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