import 'package:flutter/material.dart';
import 'package:figma_app/widgets/book_card.dart';
import 'package:figma_app/data/book.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Total books(${(list.length)})',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              // print("list length ${list.length}");

              return BookCard(
                asset: list[index].asset,
                title: list[index].title,
                published: list[index].published,
                text: list[index].text,
                text1: list[index].text1,

                // icon: list[index].icon,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: list.length),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
