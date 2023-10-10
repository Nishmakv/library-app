import 'package:flutter/material.dart';

class MyAppBar2 extends StatelessWidget {
  const MyAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Profile',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: const [
        Icon(
          Icons.search,
          color: Colors.black,
        ),
      ],
    );
  }
}
