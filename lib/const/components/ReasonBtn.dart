// ignore: file_names
import 'package:flutter/material.dart';

class ReasonBtn extends StatelessWidget {
  final String astImage;
  final String btnLabel;

  const ReasonBtn({super.key, required this.btnLabel, required this.astImage});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        print("Do this lmao");
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xFFF5F5F5), // whitesmoke
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        side: BorderSide(color: Colors.transparent), // No visible border
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(astImage, height: 60), // Adjust image size as needed
          const SizedBox(height: 12),
          Text(
            btnLabel,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
