import 'package:figma_app/screens/avatar_tap.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class StoryCardWidget extends StatelessWidget {
  String asset;
  String name;
  String email;
  StoryCardWidget(
      {super.key,
      required this.asset,
      required this.name,
      required this.email});
  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ProfileScreen(asset: asset, name: name, email: email),
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

  // void navigateToAnotherPage(BuildContext ctx) {
  //   Navigator.of(ctx).push(
  //     MaterialPageRoute(
  //       builder: (ctx1) =>
  //           ProfileScreen(asset: asset, name: name, email: email),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushDynamicScreen(context,
            screen: _createRoute(), withNavBar: false);
        // navigateToAnotherPage(context);
        // Navigator.of(context).push(_createRoute());
      },
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(asset),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 80,
            height: 35,
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
