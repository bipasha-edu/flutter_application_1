import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List screens = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Activity Screen")),
    Center(child: Text("Stats Screen")),
    Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Bar"),
        backgroundColor: Colors.indigoAccent,
      ),

      body: screens[selectedIndex],

      bottomNavigationBar: Container(
        color: Colors.indigoAccent,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Icon(
                Icons.home,
                color: selectedIndex == 0 ? Colors.white : Colors.black,
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Icon(
                Icons.show_chart,
                color: selectedIndex == 1 ? Colors.white : Colors.black,
              ),
            ),

         
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Icon(
                Icons.bar_chart,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
              ),
            ),

            
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Icon(
                Icons.person,
                color: selectedIndex == 3 ? Colors.white : Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
