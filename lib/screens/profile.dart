import 'package:figma_app/screens/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_app/data/appbar1.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isloading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const MyAppBar2(),
              const SizedBox(height: 150),
              //empty space from the top
              SizedBox(
                height: 270,
                width: 230,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/Rectangle 21484.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 170,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Anjali Sharma',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '+91 8129872311',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 12),

              Container(
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 244, 244, 244),
                ),
                child: const Center(
                  child: Text(
                    'anjalisharma1@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  gotoLogin(context);
                },
                child: const Text('TextEditongButton'),
              ),
            ],
          ),
        ),
      );
    }
  }
}

void gotoLogin(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx1) => DetailsScreen()));
}
