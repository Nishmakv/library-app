import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListCardWidget extends StatefulWidget {
  final VoidCallback? onTap;
  String asset;
  bool isSelected;

  ListCardWidget({
    super.key,
    required this.asset,
    required this.isSelected,
    this.onTap,
  });

  @override
  State<ListCardWidget> createState() => _ListCardWidgetState();
}

class _ListCardWidgetState extends State<ListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border:
              widget.isSelected == true ? Border.all(color: Colors.red) : null,
        ),
        child: Image.asset(
          widget.asset, 
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
