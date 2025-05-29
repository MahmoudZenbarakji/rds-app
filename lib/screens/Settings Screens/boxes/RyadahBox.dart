import 'package:flutter/material.dart';

class RyadahBox extends StatelessWidget {
  const RyadahBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: [
                Container(width: 70, child: Image.asset("assets/logo.png")),
                Text("Hussien Box"),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => RyadahBox()));
                    },
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
            Text("Images"),
          ],
        ),
      ),
    );
  }
}
