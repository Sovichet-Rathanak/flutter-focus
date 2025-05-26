import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String teacherName;
  final String teacherSpeciality;
  final String teacherImg;
  const TeacherCard({
    super.key,
    required this.teacherName,
    required this.teacherSpeciality,
    required this.teacherImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: Colors.grey.shade100,
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(teacherImg, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(teacherName), Text(teacherSpeciality)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
