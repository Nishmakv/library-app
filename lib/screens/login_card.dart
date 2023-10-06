import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LoginCard extends StatefulWidget {
  final TextEditingController controller;
  String label;
  String hint;
  bool obscureText;
  bool forgotPassword;

  LoginCard({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.forgotPassword = false,
  });

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.label,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1B1B1F),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    widget.forgotPassword
                        ? TextButton(
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Color(0xFF0073E6),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          )
                        : const SizedBox(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: widget.controller,
                  obscureText: widget.obscureText,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0x190A0A0A),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),

                    hintText: widget.hint,
                    hintStyle: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    suffixIcon: widget.obscureText
                        ? IconButton(
                            color: const Color(0x190A0A0A),
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                widget.obscureText = !widget.obscureText;
                                // _obscureText = !_obscureText;
                              });
                            },
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
