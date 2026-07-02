import 'package:flutter/material.dart';

import 'package:flutter_application_1/list_build.dart';



class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int selectedIndex = 0;
  

  void selectedValue(int index){
    setState(() {
    selectedIndex = index;
    });

    
    print("SelectedIndex value: $selectedIndex");
  }
  List<Widget> screen = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Settings Screen")),
    Center(child: Text("Profile Screen")),
    ListBuild(), 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blueAccent,
      ),

      body: screen[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: ((value) =>(selectedValue(value))),
           type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
        ]),
    );
  }
}
