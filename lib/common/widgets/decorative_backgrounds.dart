import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

// Clipper (TIDAK BERUBAH)
class HalfCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(0.0, 0.0, size.width, size.height / 2);
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

// === DEKORASI A ===
class DecorationA extends StatelessWidget {
  const DecorationA({Key? key, required this.primary, required this.top, required this.left}) : super(key: key);
  final Color primary;
  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(top: top, left: left, child: CircleAvatar(radius: 100, backgroundColor: primary)),
        Positioned(top: 20, left: 40, child: CircleAvatar(radius: 10, backgroundColor: primary)),
        Positioned(top: 20, right: -30, child: Container(height: 80, width: 80, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)))),
      ],
    );
  }
}

// === DEKORASI B ===
class DecorationB extends StatelessWidget {
  const DecorationB({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(top: -65, right: -65, child: CircleAvatar(radius: 70, backgroundColor: Colors.blue.shade100)),
        Positioned(top: 35, right: -40, child: ClipRect(clipper: HalfCircleClipper(), child: CircleAvatar(backgroundColor: AppColor.lightseeBlue.withOpacity(0.5), radius: 40))),
      ],
    );
  }
}

// === DEKORASI C ===
class DecorationC extends StatelessWidget {
  const DecorationC({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(top: -105, left: -35, child: CircleAvatar(radius: 70, backgroundColor: AppColor.orange.withOpacity(0.1))),
        Positioned(top: 35, right: -40, child: ClipRect(clipper: HalfCircleClipper(), child: CircleAvatar(backgroundColor: AppColor.orange, radius: 40))),
        Positioned(top: 45, left: 70, child: CircleAvatar(radius: 10, backgroundColor: AppColor.yellow)),
      ],
    );
  }
}

// === DEKORASI D ===
class DecorationD extends StatelessWidget {
  const DecorationD({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(top: -50, left: -40, child: CircleAvatar(radius: 100, backgroundColor: AppColor.darkseeBlue)),
        Positioned(top: 20, left: 10, child: CircleAvatar(radius: 12, backgroundColor: AppColor.yellow)),
        Positioned(top: 130, left: -50, child: CircleAvatar(radius: 80, backgroundColor: AppColor.purple, child: CircleAvatar(radius: 50, backgroundColor: AppColor.darkseeBlue.withOpacity(0.5)))),
        Positioned(top: -30, right: -40, child: Container(height: 80, width: 80, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)))),
      ],
    );
  }
}