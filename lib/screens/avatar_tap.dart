import 'package:flutter/material.dart';
import 'package:figma_app/widgets/latest_books.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  String asset;
  String name;
  String email;

  ProfileScreen({
    super.key,
    required this.asset,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool istablet = width > 700;
    double containerWidth = istablet ? width : 500;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(name),
        actions: const [
          Icon(
            Icons.search,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: containerWidth,
                height: 600,
                color: const Color.fromARGB(255, 241, 240, 231),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 250,
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          asset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(email),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 82, 82),
                      ),
                      child: const Text(
                        'Chat with author',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const BookScreen()
            ],
          ),
        ),
      ),
    );
  }
}
