import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/boxes/MyBox.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import 'package:get/get.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/us.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/users.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:rdsboxapp/screens/Sign_up%20Screens/Sign_up.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isswitch = true;

  void Lang(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(AppLocalizations.of(context)!.language),
          content: Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    )),
                new SizedBox(
                  height: 20.0,
                ),
                TextButton(onPressed: () {}, child: Text("Arabic")),
              ],
            ),
          ),
        );
      },
    );
  }

  void Modes(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Modes'),
          content: Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          ThemeData.dark();
                        });
                      },
                      child: Text("Dark")),
                ),
                new SizedBox(
                  height: 20.0,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        ThemeData.light();
                      });
                    },
                    child: Text("Light")),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back))),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            AppLocalizations.of(context)!.settings,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyBoxes()));
              },
              child: Row(
                children: [
                  Image.asset("assets/box.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      AppLocalizations.of(context)!.myboxes,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset("assets/file-invoice.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      AppLocalizations.of(context)!.invoices,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )),
        ),
        Container(
            margin: EdgeInsets.all(15),
            child: Text(AppLocalizations.of(context)!.boxsettings,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21))),
        Container(
            height: 40,
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Users()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.supervised_user_circle_sharp,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Users",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ))),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(12.0)),
          padding: const EdgeInsets.all(3.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Icon(Icons.keyboard),
              ),
              /*SizedBox(
                width: 300,
              ),*/
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  AppLocalizations.of(context)!.enableboxkeboard,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Switch(
                  value: isswitch,
                  onChanged: (value) {
                    setState(() {
                      isswitch = value;
                    });
                  })
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.autorenew,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    AppLocalizations.of(context)!.rebootbox,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Icon(
                      Icons.wifi,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.updatewifisettings,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Icon(
                      Icons.mobiledata_off,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.updatecellularsettings,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            AppLocalizations.of(context)!.general,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {
                setState(() {
                  Lang(context);
                });
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Icon(
                      Icons.language,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.language,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    AppLocalizations.of(context)!.arabic,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {
                setState(() {
                  Modes(context);
                });
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Icon(
                      Icons.mode_night_sharp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.appmode,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Light mode",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(12.0)),
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Icon(Icons.notifications),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                AppLocalizations.of(context)!.notification,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 100,
              ),
              Row(
                children: [
                  Switch(
                      value: isswitch,
                      onChanged: (value) {
                        setState(() {
                          isswitch = value;
                        });
                      }),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            AppLocalizations.of(context)!.account,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Icon(
                      Icons.private_connectivity_rounded,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.passwordandsecurity,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Sign_UP()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.logout,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              )),
        ),
      ],
    )));
  }
}
