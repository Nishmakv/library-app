import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:figma_app/screens/splash.dart';

import 'bloc/bottom_navigation_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => BottomNavigationBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          fontFamily: GoogleFonts.roboto().fontFamily),
      home: const SplashScreen(),
    );
  }
}
