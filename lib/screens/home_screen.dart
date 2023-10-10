import 'package:figma_app/data/book.dart';
import 'package:figma_app/screens/home.dart';
import 'package:figma_app/screens/profile.dart';
import 'package:figma_app/screens/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:figma_app/data/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  int selectedIndex = 0;

  Icon icon = const Icon(Icons.search);

  final List<Widget> _listOfScreen = [
    const HomeTab(),
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const ProfileWidget()));
                // BlocProvider.of<BottomNavigationBloc>(context)
                // .add(const TabIndexChangeEvent(changeIndex: true));
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => DetailsScreen()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          selectedIndex == 0 ? "Home" : "Profile",
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
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
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.person),
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: Colors.grey,
          ),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
