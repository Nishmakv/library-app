import 'package:figma_app/bloc1/bloc/profile_bloc_bloc.dart';
import 'package:figma_app/model/profile_get_model.dart';
import 'package:figma_app/screens/avatar_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class StoryCardWidget extends StatefulWidget {
  String asset;
  VoidCallback? onTap;
  String name;

  StoryCardWidget({
    super.key,
    this.onTap,
    required this.asset,
    required this.name,
  });

  @override
  State<StoryCardWidget> createState() => _StoryCardWidgetState();
}

class _StoryCardWidgetState extends State<StoryCardWidget> {
  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ProfileScreen(
            id: employeeData!.id,
            fname: employeeData!.fname,
            lname: employeeData!.lname,
            contact: employeeData!.contact,
            email: employeeData!.email,
            image: employeeData!.image),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }

  ProfileGetModel? employeeData;

  // void navigateToAnotherPage(BuildContext ctx) {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBlocBloc, ProfileBlocState>(
      listener: (context, state) {
        // if (state is GetEmployeeDetailsSuccess) {
        //   print("listeningggg.......");
        //   employeeData = state.employeeData;

        //   // PersistentNavBarNavigator.pushDynamicScreen(context,
        //   //     screen: _createRoute(), withNavBar: false);
        //   // setState(() {
        //   //   print(employeeData);
        //   // });
        // }
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage(widget.asset),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 80,
              height: 35,
              child: Text(
                widget.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
