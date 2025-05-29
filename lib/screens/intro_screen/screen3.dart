import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Home_Page.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:rdsboxapp/screens/Sign_up%20Screens/Verification_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Sign_in()));
                },
                child: Text(
                  AppLocalizations.of(context)!.skip,
                ),
              ),
            ),
            Container(
                // margin: EdgeInsets.fromLTRB(110, 0, 0, 0),
                height: 70,
                width: 70,
                child: Image.asset("assets/logo.png")),
            GestureDetector(
                onTap: () {},
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ))
          ],
        ),
        Container(
          height: 320,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(20.0)),
          margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Image.asset('assets/undraw_order_delivered_re_v4ab 1.png'),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Text(
            AppLocalizations.of(context)!.favorite,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              AppLocalizations.of(context)!.screen3,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ])),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 80),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Sign_in()));
              },
              child: Text(
                AppLocalizations.of(context)!.getstarted,
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    ));
  }
}
