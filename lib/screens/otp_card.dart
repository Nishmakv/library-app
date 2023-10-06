import 'package:flutter/material.dart';

class OtpCard extends StatefulWidget {
  final TextEditingController controller;
  const OtpCard({super.key,required this.controller});

  @override
  State<OtpCard> createState() => _OtpCardState();
}

class _OtpCardState extends State<OtpCard> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )
      ),
    );
  }
}
