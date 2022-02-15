import 'package:flutter/material.dart';
import 'package:netzary_assignment/api.dart';
import 'package:netzary_assignment/presentation/explore/screen_explore.dart';
import 'package:netzary_assignment/presentation/home/screen_home.dart';
import 'package:netzary_assignment/presentation/mainPage/widgets/bottom_navigation.dart';
import 'package:netzary_assignment/presentation/mainPage/widgets/drawer.dart';
import 'package:netzary_assignment/presentation/notifications/screen_notification.dart';
import 'package:netzary_assignment/presentation/saved/screen_saved.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = [
    HomeScreen(),
    ExploreScreen(),
    SavedScreen(),
    NotificationScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: MainScreenDrawer(),
      // backgroundColor: Colors.black,
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext ctx, int index, Widget? _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
