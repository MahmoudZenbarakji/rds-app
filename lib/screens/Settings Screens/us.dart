import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/user.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150.0),
                      child: Text("Welcome"),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 60, 80),
                  child: Text("Hussien Mohammad"),
                ),
                Container(
                  /*  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 50),*/
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 70, child: Image.asset("assets/logo.png")),
                          Text("Ryadah Box"),
                          SizedBox(
                            width: 100,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () {},
                              child: Text("Active")),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text(
                          "BOX ID  : #201903",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 240, 172, 172),
                            borderRadius: BorderRadius.circular(6)),
                        margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.red,
                            ),
                            Text("the box expires on 30-3-2024"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
