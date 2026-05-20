import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.grey.shade200,

        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 5,
          centerTitle: true,

          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),

          title: Text(
            "Student Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: 330,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        size: 55,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "Muhammad Maaz",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 8),

                    Container(
                      height: 4,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    SizedBox(height: 25),

                    infoRow(
                      Icons.school,
                      "Program",
                      "BS Software Engineering",
                    ),

                    Divider(height: 25),

                    infoRow(
                      Icons.calendar_month,
                      "Semester",
                      "5th Semester",
                    ),

                    Divider(height: 25),

                    infoRow(
                      Icons.menu_book_outlined,
                      "Course",
                      "Mobile Application Development",
                    ),

                    Divider(height: 25),

                    infoRow(
                      Icons.location_city,
                      "University",
                      "COMSATS University Islamabad",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: 330,
                padding: EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    skillBox(
                      Icons.flutter_dash_sharp,
                      "Flutter",
                      Colors.blue.shade50,
                    ),

                    skillBox(
                      Icons.code,
                      "Dart",
                      Colors.green.shade50,
                    ),

                    skillBox(
                      Icons.palette,
                      "UI Design",
                      Colors.purple.shade50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoRow(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Icon(
          icon,
          color: Colors.blue,
          size: 28,
        ),

        SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              SizedBox(height: 3),

              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget skillBox(IconData icon, String text, Color color) {
    return Container(
      width: 90,
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [

          Icon(
            icon,
            size: 35,
            color: Colors.blue,
          ),

          SizedBox(height: 10),

          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}