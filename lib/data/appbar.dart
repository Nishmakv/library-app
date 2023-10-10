import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text(
         'Home',
          style:  TextStyle(
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