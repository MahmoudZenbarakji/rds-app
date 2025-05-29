import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/Settings.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/boxes/RyadahBox.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/cards.dart';

class MyBoxes extends StatefulWidget {
  const MyBoxes({super.key});

  @override
  State<MyBoxes> createState() => _MyBoxesState();
}

class _MyBoxesState extends State<MyBoxes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 300.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                icon: Icon(Icons.arrow_back)),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "MyBoxes",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 250,
            child: Card(
              color: Color.fromRGBO(240, 240, 240, 1),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Ryadah Box"),
                        Container(
                            height: 70,
                            width: 70,
                            child: Image(image: AssetImage("assets/logo.png")))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150.0),
                      child: Text(
                        "# BOX ID : #2352",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RyadahBox()));
                              },
                              child: Text("Active")),
                        ),
                        Text("Box Expired on 20/10/2024"),
                      ],
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () {},
                          child: Text(
                            "View",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 250,
            child: Card(
              color: Color.fromRGBO(240, 240, 240, 1),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Madinah Box"),
                        Container(
                            height: 70,
                            width: 70,
                            child: Image(image: AssetImage("assets/logo.png")))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150.0),
                      child: Text(
                        "# BOX ID : #2352",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: () {
                                exoansion();
                              },
                              child: Text("expired")),
                        ),
                        Text("Box Expired on 20/3/2024"),
                      ],
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () {},
                          child: Text(
                            "View",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class exoansion extends StatelessWidget {
  const exoansion({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Sda"),
      subtitle: Text('Box ID: '),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Box expires on: '),
              SizedBox(height: 10),
              Text('Additional information about the box...'),
              // Add more details or widgets as needed
            ],
          ),
        ),
      ],
    );
  }
}
