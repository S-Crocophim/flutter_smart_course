import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';

// Helper Widget
Widget _smallContainer(Color primaryColor, double top, double left, {double radius = 10}) {
  return Positioned(
    top: top,
    left: left,
    child: CircleAvatar(
      radius: radius,
      backgroundColor: primaryColor.withAlpha(255),
    ),
  );
}

// Clipper
class HalfCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(0.0, 0.0, size.width, size.height / 2);
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

// Widget-widget Dekorasi
class DecorationA extends StatelessWidget {
  const DecorationA({Key? key, required this.primary, required this.top, required this.left}) : super(key: key);
  final Color primary;
  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(radius: 100, backgroundColor: primary),
        ),
        _smallContainer(primary, 20, 40),
        Positioned(
          top: 20, right: -30,
          child: Container(height: 80, width: 80, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white))),
        )
      ],
    );
  }
}

class DecorationB extends StatelessWidget {
  const DecorationB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65, right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue.shade100,
            child: const CircleAvatar(radius: 30, backgroundColor: Colors.white),
          ),
        ),
        Positioned(
          top: 35, right: -40,
          child: ClipRect(
            clipper: HalfCircleClipper(),
            child: const CircleAvatar(backgroundColor: AppColor.lightseeBlue, radius: 40)
          ),
        )
      ],
    );
  }
}

class DecorationC extends StatelessWidget {
  const DecorationC({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Positioned(
          top: -105, left: -35,
          child: CircleAvatar(radius: 70, backgroundColor: Color(0xfffcd299)),
        ),
        Positioned(
          top: 35, right: -40,
          child: ClipRect(clipper: HalfCircleClipper(),
            child: const CircleAvatar(backgroundColor: AppColor.orange, radius: 40)
          )
        ),
        _smallContainer(const Color(0xfffcd299), 35, 70),
      ],
    );
  }
}

class DecorationD extends StatelessWidget {
  final Color secondary;
  final Color secondaryAccent;
  const DecorationD({Key? key, required this.secondary, required this.secondaryAccent}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -50, left: 30,
          child: CircleAvatar(radius: 100, backgroundColor: secondary),
        ),
        _smallContainer(AppColor.yellow, 18, 35, radius: 12),
        Positioned(
          top: 130, left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: AppColor.purple,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30, right: -40,
          child: Container(height: 80, width: 80, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white))),
        )
      ],
    );
  }
}