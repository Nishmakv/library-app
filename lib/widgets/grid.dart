import 'package:figma_app/widgets/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridCard extends StatelessWidget {
  GridCard({super.key});

  List<GridData> list = [
    GridData(
      asset: 'assets/images/Group 30560 (2).png',
      name: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 150, bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Top 10',
                style: GoogleFonts.squadaOne(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'Summer Fiction',
                style: GoogleFonts.squadaOne(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    ),
    GridData(
      asset: 'assets/images/Group 30561 (2).png',
      name: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '25',
              style: GoogleFonts.squadaOne(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 213, 140, 114),
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Text(
              'If you are done',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 124, 83, 84),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    GridData(
        asset: 'assets/images/Group 30563 (2).png',
        name: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 150, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Top 10',
                  style: GoogleFonts.squadaOne(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Summer Fiction',
                  style: GoogleFonts.squadaOne(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
    GridData(
        asset: 'assets/images/Group 30562 (2).png',
        name: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '25',
                style: GoogleFonts.squadaOne(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 213, 140, 114),
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              const Text(
                'If you are done',
                style: TextStyle(
                  color: Color.fromARGB(255, 124, 83, 84),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'Popular  List',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: deviceWidth / 1.6,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return GridCardWidget(
                  asset: list[index].asset ?? '',
                  name: list[index].name ?? const Text('data'));
            },
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}

class GridData {
  String? asset;
  Widget? name;
  GridData({this.asset, this.name});
}
