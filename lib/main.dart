import 'package:figma_app/bloc/login_bloc.dart';
import 'package:figma_app/bloc1/bloc/profile_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:figma_app/screens/splash.dart';

import 'bloc/bottom_navigation_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => BottomNavigationBloc(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
      BlocProvider(
        create: (context) => ProfileBlocBloc(),
      ),
    ],
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
