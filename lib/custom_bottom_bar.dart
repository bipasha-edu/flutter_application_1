import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen2.dart';
import 'package:flutter_application_1/profile_screen.dart';
import 'package:flutter_application_1/search_screen.dart';
import 'package:flutter_application_1/settings_screen.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
 
  int selectedIndex = 0;
   
  List screen = [HomeScreen2(), SearchScreen(), SettingsScreen(), ProfileScreen() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Custom Bar"),
      backgroundColor: Colors.indigoAccent,
    ),

    
      body: screen[selectedIndex], 
      bottomNavigationBar: Container(
    color: Colors.indigoAccent,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [

        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
              
            },
            //);
         // },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home),
              SizedBox(height: 5),
              Text("Home"),
            ],
          ),
        ),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search),
              SizedBox(height: 5),
              Text("Search"),
            ],
          ),
        ),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.settings),
              SizedBox(height: 5),
              Text("Settings"),
            ],
          ),
        ),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 3;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle),
              SizedBox(height: 5),
              Text("Profile"),
            ],
          ),
        ),

      ],
    ),
  )

    );
  
}
}
