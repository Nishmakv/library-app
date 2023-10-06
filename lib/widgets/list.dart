import 'package:flutter/material.dart';
import 'package:figma_app/widgets/list_card.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  List list = [
    'assets/images/Rectangle 22033.png',
    'assets/images/Rectangle 22034.png',
    'assets/images/Rectangle 22018.png',
    'assets/images/Rectangle 22019.png',
    'assets/images/Rectangle 22033.png',
    'assets/images/Rectangle 22034.png',
    'assets/images/Rectangle 22018.png',
    'assets/images/Rectangle 22019.png',
    'assets/images/Rectangle 22033.png',
    'assets/images/Rectangle 22034.png',
    'assets/images/Rectangle 22018.png',
    'assets/images/Rectangle 22019.png',
    'assets/images/Rectangle 22033.png',
    'assets/images/Rectangle 22034.png',
    'assets/images/Rectangle 22018.png',
    'assets/images/Rectangle 22019.png',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Arrivals',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ListCardWidget(
                    asset: list[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: list.length),
          ),
        )
      ],
    );
  }
}
