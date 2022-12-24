import 'package:admin_module/constants.dart';
import 'package:admin_module/screens/Add_club_event.dart';
import 'package:admin_module/screens/club.dart';
import 'package:flutter/material.dart';

import '../my_flutter_app_icons.dart';
import 'homepage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List page = [
    Homepage(),
    AddClubEVent(),
    Clubpage(),
  ];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   leading: BackButton(
      //     color: kTextcolor,
      //   ),
      //   title: Text(
      //     'Clubs',
      //     style: TextStyle(
      //         fontSize: 22.0, fontFamily: "sans-serif", color: kTextcolor),
      //   ),
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Icon(
      //         Icons.search,
      //         color: dividertextcolor,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(
      //           left: 0.0, right: 20.0, top: 20.0, bottom: 20.0),
      //       child: Icon(
      //         Icons.filter_alt,
      //         color: dividertextcolor,
      //       ),
      //     )
      //   ],
      //   backgroundColor: Colors.transparent,
      // ),
      body: page[currentindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentindex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.home_svgrepo_com,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.event_svgrepo_com__1_,
              ),
              label: "My Events",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.club_house__2_,
              ),
              label: "clubs",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     MyFlutterApp.profile_svgrepo_com,
            //   ),
            //   label: "Profile",
            // ),
          ],
          selectedItemColor: kbuttonbackcolor,
          unselectedItemColor: kdividertextcolor,
        ),
      ),
    );
  }
}
