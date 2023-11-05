// import 'package:figma_app/data/appbar.dart';
// import 'package:flutter/material.dart';
// import 'package:figma_app/widgets/stories.dart';
// import 'package:figma_app/widgets/list.dart';
// import 'package:figma_app/widgets/grid.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeTab extends StatelessWidget {
//   const HomeTab({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       // padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const MyAppBar(),
//           Padding(
//             padding: const EdgeInsets.only(top: 25),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
//               child: Text(
//                 'Welcome back',
//                 style: GoogleFonts.roboto(
//                   textStyle: const TextStyle(
//                     fontSize: 45,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15),
//             child: Text(
//               'Jessica!',
//               style: GoogleFonts.roboto(
//                 textStyle: const TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15),
//             child: Text(
//               'We are glad to see you just 16 days after your',
//               style: GoogleFonts.roboto(
//                 textStyle: const TextStyle(
//                   color: Color.fromARGB(255, 100, 100, 100),
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15),
//             child: Text(
//               'last visit and cant wait to help you find your next',
//               style: GoogleFonts.roboto(
//                 textStyle: const TextStyle(
//                   color: Color.fromARGB(255, 100, 100, 100),
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15),
//             child: Text(
//               'page turner!',
//               style: GoogleFonts.roboto(
//                 textStyle: const TextStyle(
//                   color: Color.fromARGB(255, 100, 100, 100),
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ),
//           //const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
//             child: GridCard(),
//           ),
//           // const SizedBox(height: 50),
//           Padding(
//             padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
//             child: StoryCard(),
//           ),
//           // const SizedBox(height: 20),
//           const Padding(
//             padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
//             child: const ListCard(),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:figma_app/data/appbar.dart';
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
          //  const MyAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'Welcome back',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Jessica!',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 30,
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
                fontSize: 15,
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
                fontSize: 15,
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
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 30),
          GridCard(),
          const SizedBox(height: 15),
          StoryCard(),
          const SizedBox(height: 5),
          const ListCard(),
        ],
      ),
    );
  }
}
