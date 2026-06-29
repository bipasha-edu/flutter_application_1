import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Name", style: TextStyle(color:Colors.white)),
        backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
              Text("Bipasha", style: TextStyle(fontSize: 20)),
              Text("Vanshika", style: TextStyle(fontSize: 20)),
              Text("Riya", style: TextStyle(fontSize: 20)),
            
            ],
          ),
        ),
      );
    
  }
}