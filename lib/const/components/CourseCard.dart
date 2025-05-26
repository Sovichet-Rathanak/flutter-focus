import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String instructor;
  final String price;

  const CourseCard({
    super.key,
    required this.image,
    required this.title,
    required this.instructor,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2)),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 60),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(instructor, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 4),
          Text("\$$price", style: TextStyle(fontSize: 16)),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text("Start"), Icon(Icons.arrow_forward)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
