import 'package:figma_app/bloc/login_bloc.dart';
import 'package:figma_app/screens/home_screen.dart';
import 'package:figma_app/screens/login_card.dart';
import 'package:figma_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void saveDetails(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login Success'),
              duration: Duration(seconds: 3),
            ),
          );
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const HomeScreen()));
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login failed'),
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome back!',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color(0xFF1B1B1F),
                          height: 2,
                        ),
                      ),
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
                      forgotPassword: true,
                      password: true,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        context.read<LoginBloc>().add(LoginProcess(
                            username: emailController.text,
                            password: passwordController.text));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(720, 55),
                          backgroundColor: const Color(0xFF0073E6)),
                      child: Text(
                        'Login',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to sidra Store?',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF1B1B1F),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx1) => const RegisterScreen()));
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF0073E6),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
