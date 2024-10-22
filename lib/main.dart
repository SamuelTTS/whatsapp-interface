import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:app/pages/call.dart';
import 'package:app/pages/communautes.dart';
import 'package:app/pages/actus.dart';
import 'package:app/pages/discussion.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final pages = [Discussion(), Actu(), Communautes(), Calls()];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageindex,
        onDestinationSelected: (int index) {
          setState(() {
            pageindex = index;
          });
        },
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.message), label: "message"),
          NavigationDestination(
              icon: Icon(Icons.filter_tilt_shift_sharp), label: "status"),
          NavigationDestination(icon: Icon(Icons.groups), label: "status"),
          NavigationDestination(icon: Icon(Icons.phone), label: "status")
        ],
      ),
    );
  }
}
