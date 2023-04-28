import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypass/screens/concert/concert.dart';
import 'package:mypass/screens/hotel/hotel.dart';
import 'package:mypass/screens/movie/movie.dart';
import 'package:mypass/screens/party/party_screen.dart';
import 'package:mypass/screens/sport/sport.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../config/style.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  //PersistentTabController _controller;
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  //final double iconSize = 2;
  String code = '';
  String tontineName = '';

  List<Widget> _buildScreens(BuildContext context) {
    return [
      const SportScreen(),
      const ConcertScreen(),
      const PartyScreen(),
      const MovieScreen(),
      const HotelScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.sportscourt),
        title: "Sport",
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          height: 0.4,
        ),
        activeColorPrimary: Palette.bleuColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.music_mic,
          //size: iconSize,
        ),
        title: "Concert",
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          height: 0.4,
        ),
        activeColorPrimary: Palette.bleuColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //iconSize: 500,

        icon: const FaIcon(FontAwesomeIcons.champagneGlasses),
        title: "Party",
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          height: 0.4,
        ),
        activeColorPrimary: Palette.bleuColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //iconSize: 500,

        icon: const Icon(CupertinoIcons.tv),
        title: "Cinéma",
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          height: 0.4,
        ),
        activeColorPrimary: Palette.bleuColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        //iconSize: 500,

        icon: const Icon(CupertinoIcons.bed_double),
        title: "Hôtel",
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          height: 0.4,
        ),
        activeColorPrimary: Palette.bleuColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      floatingActionButton: const SpeedDial(
        //animationCurve: Curves.easeInCirc,
        overlayColor: Palette.blackColor,

        overlayOpacity: 0.5,
        backgroundColor: Palette.bleuColor,
        // animatedIcon: AnimatedIcons.list_view,
        icon: CupertinoIcons.qrcode_viewfinder,
        iconTheme: IconThemeData(
          size: 35,
        ),
        /* children: [
          SpeedDialChild(
            onTap: () {
              //addTontine();
            },
            child: const Icon(
              Icons.create_new_folder,
              color: Palette.whiteColor,
            ),
            label: 'Créer une tontine',
            labelBackgroundColor: Palette.greyColor.withOpacity(0.9),
            labelStyle: const TextStyle(color: Palette.whiteColor),
            backgroundColor: Palette.greyColor,
          ),
          SpeedDialChild(
            onTap: () {
              //rejoindreTontine(context);
            },
            child: const Icon(
              CupertinoIcons.person_3,
              color: Palette.whiteColor,
            ),
            label: 'Rejoindre une tontine',
            labelBackgroundColor: Palette.greyColor.withOpacity(0.9),
            labelStyle: const TextStyle(color: Palette.whiteColor),
            backgroundColor: Palette.greyColor,
          ),
        ], */
      ),
      context,
      controller: _controller,
      screens: _buildScreens(context),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -1))
        ],
        //gradient: LinearGradient(colors: Colors.primaries),
        borderRadius: BorderRadius.circular(10.0),

        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
