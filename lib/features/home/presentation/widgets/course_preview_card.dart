import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

// Kelas utama, kita ubah agar sesuai dengan desain yang berwarna.
class CoursePreviewCard extends StatelessWidget {
  final Color primaryColor;
  final Color chipColor;
  final String imgPath;
  final String title;
  final String courseCount;
  final Widget backWidget;
  final bool isPrimaryCard;

  const CoursePreviewCard({
    Key? key,
    this.primaryColor = AppColor.orange,
    required this.chipColor,
    required this.imgPath,
    required this.title,
    required this.courseCount,
    required this.backWidget,
    this.isPrimaryCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menggunakan ukuran lebar yang relatif terhadap layar
    final width = MediaQuery.of(context).size.width;
    return Container(
      // Tinggi diatur berdasarkan apakah ini kartu utama atau bukan
      height: isPrimaryCard ? 190 : 180,
      width: width * .38,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: primaryColor.withAlpha(200),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: const Offset(0, 5),
                blurRadius: 10,
                color: AppColor.lightpurple.withAlpha(20))
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Stack(
          children: <Widget>[
            // Widget untuk dekorasi latar belakang abstrak
            backWidget,
            // Avatar pengguna di pojok atas
            Positioned(
              top: 20,
              left: 10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white, // Latar belakang putih untuk placeholder
                backgroundImage: CachedNetworkImageProvider(imgPath),
              ),
            ),
            // Info kartu (judul dan jumlah kursus) di bagian bawah
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: _CardInfo(
                title: title,
                courses: courseCount,
                textColor: AppColor.titleTextColor,
                primary: chipColor,
                isPrimaryCard: isPrimaryCard,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget internal untuk menampilkan judul dan chip jumlah kursus.
class _CardInfo extends StatelessWidget {
  final String title;
  final String courses;
  final Color textColor;
  final Color primary;
  final bool isPrimaryCard;

  const _CardInfo({
    Key? key,
    required this.title,
    required this.courses,
    required this.textColor,
    required this.primary,
    this.isPrimaryCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Membuat column hanya setinggi kontennya agar tidak mendorong keluar batas
      mainAxisSize: MainAxisSize.min, 
      children: <Widget>[
        Text(
          title,
          maxLines: 2, // Mencegah teks terlalu panjang
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isPrimaryCard ? Colors.white : textColor,
          ),
        ),
        const SizedBox(height: 8),
        _Chip(text: courses, color: primary, isPrimaryCard: isPrimaryCard)
      ],
    );
  }
}

// Widget internal untuk chip (misal: "8 Courses").
class _Chip extends StatelessWidget {
  final String text;
  final Color color;
  final bool isPrimaryCard;
  
  const _Chip({Key? key, required this.text, required this.color, this.isPrimaryCard = false}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: color.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : color, fontSize: 12),
      ),
    );
  }
}