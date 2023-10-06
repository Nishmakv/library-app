import 'package:flutter/material.dart';
import 'package:figma_app/widgets/stories.dart';
import 'package:figma_app/widgets/list.dart';
import 'package:figma_app/widgets/grid.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'Welcome back',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Jessica!',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'We are glad to see you just 16 days after your',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 100, 100, 100),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'last visit and cant wait to help you find your next',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 100, 100, 100),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'page turner!',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 100, 100, 100),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 50),
          GridCard(),
          const SizedBox(height: 50),
          StoryCard(),
          const SizedBox(height: 20),
          ListCard(),
        ],
      ),
    );
  }
}
