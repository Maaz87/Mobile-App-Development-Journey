import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:StudentProfile() ,
  ));
}
class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:   IconButton(icon: Icon(Icons.menu), onPressed: () {  },
        color: Colors.white,
        iconSize: 30.0,),
        backgroundColor: Colors.blueAccent[400],
        toolbarHeight: 80.0,
        title: Text("Student Profile", style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight(400),
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_rounded),
                  iconSize: 80,
                  alignment: Alignment.center,)
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Muhammad Maaz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blueAccent,
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}



