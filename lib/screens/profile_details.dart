import 'package:figma_app/screens/profile_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void saveDetails(BuildContext ctx) {
    final String password = passwordController.text;
    if (password.isNotEmpty && password.length >= 6) {
      print('Password is valid');
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('Invalid password'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Column(
                children: [
                  const Text(
                    'Hi, Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'You Successfully loggedIn!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  ProfileCard(
                    controller: emailController,
                    label: 'Email',
                    hint: 'Enter your email',
                  ),
                  ProfileCard(
                    controller: passwordController,
                    label: 'Password',
                    hint: 'enter your password',
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      saveDetails(context);
                    },
                    child: const Text('Save Details'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
