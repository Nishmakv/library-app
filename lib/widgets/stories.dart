import 'package:figma_app/data/user.dart';
import 'package:flutter/material.dart';
import 'package:figma_app/widgets/story_card.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class StoryCard extends StatelessWidget {
  StoryCard({super.key});
  List<User> list = [
    User(
        asset: 'assets/images/Rectangle 22035.png',
        name: 'Marvin McKinney',
        email: 'marvinauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 941.png',
        name: 'Robert Fox',
        email: 'robertauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 942 (2).png',
        name: 'Devon Lane',
        email: 'devonauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 943.png',
        name: 'Kristin Watson',
        email: 'kristinauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 944.png',
        name: 'Jenny Wilson',
        email: 'jennyauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 945 (1).png',
        name: 'Bessie Cooper',
        email: 'bessieauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 940.png',
        name: 'Marvin McKinney ',
        email: 'marvinauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 941.png',
        name: 'Robert Fox',
        email: 'robertauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 942.png',
        name: 'Devon Lane',
        email: 'devonauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 943.png',
        name: 'Christina',
        email: 'christinaauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 944.png',
        name: 'Anjali Sharma',
        email: 'anjaliauthor@gmail.com'),
    User(
        asset: 'assets/images/Ellipse 945 (1).png',
        name: 'Catherine Sebastian',
        email: 'catherinauthor@gmail.com')
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool istablet = width > 700;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Authors',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          // height: istablet ? 150 : 100,
          height: 200,
          width: 1000,
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: istablet ? 100 : 65,
                      width: istablet ? 100 : 65,
                      child: StoryCardWidget(
                          asset: list[index].asset ?? '',
                          name: list[index].name ?? '',
                          email: list[index].email ?? ""),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 9,
                      // width: 2,
                    );
                  },
                  itemCount: list.length)),
        ),
      ],
    );
  }
}
