
import 'package:figma_app/screens/login_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage('assets/images/62c6bc0beee9410fe137d91e.png'),
            height: 200,
          ),
        ),
      ),
    );
  }
}

Future<void> gotoLogin(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 3));
  // ignore: use_build_context_synchronously
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx1) => LoginScreen()));
}
