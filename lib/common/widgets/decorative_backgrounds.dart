import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

// Clipper-nya kita pindah kesini juga
class HalfCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(0.0, 0.0, size.width, size.height / 2);
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

class DecorationA extends StatelessWidget {
  const DecorationA({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Positioned(top: -110, left: -85, child: CircleAvatar(radius: 100, backgroundColor: AppColor.darkseeBlue)),
        const Positioned(top: 40, left: 20, child: CircleAvatar(radius: 10, backgroundColor: AppColor.yellow)),
        Positioned(
          top: -30, right: -10,
          child: Container(height: 80, width: 80, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white))),
        ),
        const Positioned(
          top: 110, right: -50,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: AppColor.darkseeBlue,
            child: CircleAvatar(radius: 40, backgroundColor: AppColor.seeBlue),
          ),
        ),
      ],
    );
  }
}

// Lanjutkan untuk B, C, Dst... (Contoh A cukup untuk menunjukkan polanya)
class DecorationB extends StatelessWidget {
  const DecorationB({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Positioned(
          top: -65, left: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: AppColor.lightOrange2,
            child: CircleAvatar(radius: 30, backgroundColor: AppColor.darkOrange),
          ),
        ),
        const Positioned(bottom: -35, right: -40, child: CircleAvatar(backgroundColor: AppColor.yellow, radius: 40)),
        Positioned(
          top: 50, left: -40,
          child: Container(height: 70, width: 70, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white))),
        ),
      ],
    );
  }
}