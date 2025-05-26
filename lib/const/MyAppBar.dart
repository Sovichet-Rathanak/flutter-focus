// ignore: file_names
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      // ignore: deprecated_member_use
      backgroundColor: Colors.white.withOpacity(0.95),
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      leadingWidth: 100,
      titleSpacing: 20,
      title: const Text(
        "Worktency",
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            print("Search pressed");
          },
          icon: const Icon(Icons.search, color: Colors.black87),
          tooltip: 'Search',
        ),
        IconButton(
          onPressed: () {
            print("Profile pressed");
          },
          icon: const Icon(Icons.person_outline, color: Colors.black87),
          tooltip: 'Profile',
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
