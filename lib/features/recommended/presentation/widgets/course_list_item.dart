import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';
import 'package:flutter_smart_course/common/models/course_model.dart';
import 'package:flutter_smart_course/common/widgets/decorative_backgrounds.dart';

class CourseListItem extends StatelessWidget {
  const CourseListItem({
    Key? key,
    required this.model,
    required this.decoration,
    required this.backgroundColor,
  }) : super(key: key);

  final CourseModel model;
  final Widget decoration;
  final Color backgroundColor;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: .7,
            child: Card(
              color: backgroundColor,
              elevation: 3,
              shadowColor: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: decoration),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        model.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColor.purple,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CircleAvatar(radius: 3, backgroundColor: backgroundColor),
                    const SizedBox(width: 5),
                    Text(
                      model.noOfCource,
                      style: const TextStyle(color: AppColor.grey, fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  model.university,
                  style: const TextStyle(fontSize: 12, color: AppColor.grey),
                ),
                Text(
                  model.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: AppColor.extraDarkPurple),
                ),
                Row(
                  children: <Widget>[
                    _CourseChip(text: model.tag1, color: AppColor.darkOrange),
                    const SizedBox(width: 10),
                    _CourseChip(text: model.tag2, color: AppColor.seeBlue),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CourseChip extends StatelessWidget {
  final String text;
  final Color color;
  const _CourseChip({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: color.withOpacity(0.2),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}