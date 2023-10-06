import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridCardWidget extends StatelessWidget {
  String asset;
  Widget name;
  GridCardWidget({super.key, required this.asset, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          asset,
          fit: BoxFit.fill,
        ),
        name
      ],
    );
  }
}
