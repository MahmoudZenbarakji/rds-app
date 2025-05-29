import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/us.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/users.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Users()));
                  },
                  icon: Icon(Icons.arrow_back)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No Messages"),
              Container(
                  height: 400,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(
                      "assets/undraw_new_notifications_re_xpcv 1.png"))
            ],
          )
        ],
      ),
    );
  }
}
