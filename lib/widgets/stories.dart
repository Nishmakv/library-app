import 'package:figma_app/bloc1/bloc/profile_bloc_bloc.dart';
import 'package:figma_app/data/user.dart';
import 'package:figma_app/model/profile_get_model.dart';
import 'package:figma_app/model/profile_model.dart';
import 'package:figma_app/screens/avatar_tap.dart';
import 'package:flutter/material.dart';
import 'package:figma_app/widgets/story_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class StoryCard extends StatefulWidget {
  StoryCard({super.key});

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animation, secondaryAnimation) => ProfileScreen(
  //           id: employeeData!.id,
  //           fname: employeeData!.fname,
  //           lname: employeeData!.lname,
  //           contact: employeeData!.contact,
  //           email: employeeData!.email,
  //           image: employeeData!.image),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(0.0, 1.0);
  //         const end = Offset.zero;
  //         const curve = Curves.ease;
  //         var tween =
  //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //         return SlideTransition(
  //           position: animation.drive(tween),
  //           child: child,
  //         );
  //       });
  // }

  List<ProfileModel> profileData = [];
  int isSelectedIndex = -1;
  // ProfileGetModel? employeeData;
  @override
  void initState() {
    context.read<ProfileBlocBloc>().add(ListProfile());
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool istablet = width > 700;
    return MultiBlocListener(
      listeners: [
        BlocListener<ProfileBlocBloc, ProfileBlocState>(
          listener: (context, state) {
            if (state is ProfileBlocSuccess) {
              setState(() {
                profileData = state.profileData ?? [];
              });
            }
          },
        ),
        BlocListener<ProfileBlocBloc, ProfileBlocState>(
          listener: (context, state) {
            if (state is GetEmployeeDetailsSuccess) {
              print("listeningggg.......");
              employeeData = state.employeeData;

              PersistentNavBarNavigator.pushDynamicScreen(context,
                  screen: _createRoute(), withNavBar: false);
              // setState(() {
              //   print(employeeData);
              // });
            }
          },
        ),
        // BlocListener<ProfileBlocBloc, ProfileBlocState>(
        // listener: (context, state) {
        //   if (state is GetEmployeeDetailsSuccess) {
        //     setState(() {
        //       employeeData = state.employeeData;
        //      PersistentNavBarNavigator.pushDynamicScreen(context,
        //                       screen: _createRoute(), withNavBar: false);
        //     });
        //   }
        // },
        //  )
      ],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Authors',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            // height: istablet ? 150 : 100,
            height: 150,
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        height: istablet ? 100 : 65,
                        width: istablet ? 100 : 65,
                        child: StoryCardWidget(
                          onTap: () {
                            context
                                .read<ProfileBlocBloc>()
                                .add(ProfileGet(id: profileData[index].id));
                            // setState(() {});
                          },
                          asset: profileData[index].image ?? "",
                          name: profileData[index].name ?? '',
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                      // width: 2,
                    );
                  },
                  itemCount: profileData.length),
            ),
          ),
        ],
      ),
    );
  }
}
