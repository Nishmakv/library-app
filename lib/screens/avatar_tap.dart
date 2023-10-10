// import 'package:figma_app/bloc1/bloc/profile_bloc_bloc.dart';
// import 'package:figma_app/model/profile_get_model.dart';
import 'package:flutter/material.dart';
import 'package:figma_app/widgets/latest_books.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  int? id;
  String? fname;
  String? lname;
  String? contact;
  String? email;
  String? image;
  ProfileScreen(
      {super.key,
      required this.id,
      required this.fname,
      required this.lname,
      required this.contact,
      required this.email,
      required this.image});

  // @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool istablet = width > 700;
    double containerWidth = istablet ? width : 500;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(fname! + lname!),
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
                        child: Image.network(
                          image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      fname! + lname!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      contact!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(email!),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 82, 82, 82),
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
