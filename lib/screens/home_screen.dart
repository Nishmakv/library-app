import 'package:figma_app/screens/home.dart';
import 'package:figma_app/screens/profile.dart';
import 'package:figma_app/screens/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bottom_navigation_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  final Icon icon;
  const HomeScreen({super.key, required this.title, required this.icon});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  int _selectedIndex = 0;

  String _title = '';
  Icon icon = const Icon(Icons.search);

  List<Widget> _listOfScreen = [
    const HomeTab(),
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavigationBloc, BottomNavigationState>(
      listener: (context, state) {
        if (state is BottomNavigationSuccess) {
          print("changed index");
          _selectedIndex == 0 ? _selectedIndex = 1 : _selectedIndex = 0;
          setState(() {});
        }
      },
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ellipse 944.png'),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    'sayand@gmail.com',
                  ),
                ),
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const ProfileWidget()));
                  BlocProvider.of<BottomNavigationBloc>(context)
                      .add(const TabIndexChangeEvent(changeIndex: true));
                  setState(() {
                    _selectedIndex = 1;
                    _title = 'profile';
                    //Navigator.pop(context);
                    // });
                    // setState(() {
                    //   _selectedIndex = index;
                    //   switch (index) {
                    //     case 0:
                    //       {
                    //         _title = 'Home';
                    //         break;
                    //       }
                    //     case 1:
                    //       {
                    //         _title = 'Profile';
                    //         break;
                    //       }
                    //   }
                  });
                },
              ),
              ListTile(
                title: const Text('Login'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => DetailsScreen()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            _title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),

        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _listOfScreen,
          navBarStyle: NavBarStyle.style3,
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(microseconds: 1),
          ),
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home_outlined),
              title: 'Home',
              activeColorPrimary: Colors.black,
              inactiveColorPrimary: Colors.grey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.person),
              title: 'Profile',
              activeColorPrimary: Colors.black,
              inactiveColorPrimary: Colors.grey,
            ),
          ],
          backgroundColor: Colors.white,
        ),

        // body:
        //  PersistentTabView(
        //   context,
        //   controller: _controller,
        //   screens: _listOfScreen,
        //   navBarStyle: NavBarStyle.style3,
        //   hideNavigationBarWhenKeyboardShows: true,
        //   popAllScreensOnTapOfSelectedTab: true,
        //   screenTransitionAnimation: const ScreenTransitionAnimation(
        //       animateTabTransition: true,
        //       curve: Curves.ease,
        //       duration: Duration(microseconds: 1),
        //       ),
        //   items: [
        //     PersistentBottomNavBarItem(
        //       icon: const Icon(Icons.home_outlined),
        //       title: 'Home',
        //       activeColorPrimary: Colors.transparent,
        //       inactiveColorPrimary: Colors.grey,
        //     ),
        //     PersistentBottomNavBarItem(
        //       icon: const Icon(Icons.person),
        //       title: 'Profile',
        //       activeColorPrimary: Colors.transparent,
        //       inactiveColorPrimary: Colors.grey,
        //     ),
        //   ],
        //   backgroundColor: Colors.white,
        // ),
      ),
    );
  }
}
