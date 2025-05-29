import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Home_Page.dart';

class US extends StatelessWidget {
  const US({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Users",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(top: 20),
                  height: 60,
                  width: 600,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 134, 245)),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                                height: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              "Add user",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 40.0),
                                            child:
                                                Text("Enter user information"),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0, right: 10),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  label: Text("Name"),
                                                  hintText: "Enter user name"),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  label: Text("phone number"),
                                                  hintText:
                                                      "Enter phone number"),
                                            ),
                                          ),
                                          Container(
                                            width: 300,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 0, 134, 245)),
                                                onPressed: () {},
                                                child: Text('ADD')),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 20,
                          ),
                          Text("ADD USERS"),
                        ],
                      )),
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Home_Page()));
            },
            trailing: Icon(Icons.delete),
            title: Text(
              "Hussian Mohammad",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text("+9665XXXXXXX321"),
          ),
          ListTile(
            trailing: Icon(Icons.delete),
            title: Text(
              "Mohammad Ahmed",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text("+9665XXXXXXX321"),
          ),
        ],
      ),
    );
  }
}
