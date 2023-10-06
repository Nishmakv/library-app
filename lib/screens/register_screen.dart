import 'package:figma_app/screens/login_screen.dart';
import 'package:figma_app/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:figma_app/screens/login_card.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;

  void saveDetails(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          // child: Icon(Icons.arrow_back),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop(LoginScreen());
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200, top: 30),
                          child: Text(
                            'Create an account',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Color(0xFF1B1B1F),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    LoginCard(
                      controller: firstnameController,
                      label: 'First name',
                      hint: 'Enter first name',
                    ),
                    LoginCard(
                      controller: lastnameController,
                      label: 'Last name',
                      hint: 'Enter last name',
                    ),
                    LoginCard(
                      controller: emailController,
                      label: 'Email Address',
                      hint: 'Enter email address',
                    ),
                    LoginCard(
                      controller: passwordController,
                      label: 'Password',
                      hint: 'Enter password',
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Checkbox(
                              side: const BorderSide(color: Color(0x190A0A0A)),
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            'I accept all',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF1B1B1F),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Terms of use and privacy policy',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const Text('I accept all use of terms and privacy policy'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx1) => OtpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(690, 55),
                        backgroundColor: const Color(0xFF0073E6),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
