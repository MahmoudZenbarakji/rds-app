import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                child: Text(AppLocalizations.of(context)!.skip),
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
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Container(
          // margin: EdgeInsets.all(50),
          height: 319,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
          child: Image.asset('assets/undraw_gift_box_re_vau4 1.png'),
        ),

        /*SizedBox(
          height: 2,
        ),*/
        Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.shopping,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  AppLocalizations.of(context)!.screen1,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
