import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BookCard extends StatelessWidget {
  String asset;
  String title;
  String published;
  String text;
  String text1;

  BookCard({
    super.key,
    required this.asset,
    required this.title,
    required this.published,
    required this.text,
    required this.text1,
    // required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset(asset),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            asset,
            height: 100,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                published,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 109, 109, 109),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 180, 170, 112),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    text1,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 180, 170, 112),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      trailing: const Icon(Icons.bookmark),
    );
  }
}
