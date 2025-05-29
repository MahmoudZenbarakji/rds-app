import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
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
                height: 80, width: 100, child: Image.asset("assets/logo.png")),
            GestureDetector(
              onTap: () {},
              child: Text(AppLocalizations.of(context)!.arabic,
                  style: TextStyle(
                    color: Colors.red,
                  )),
            )
          ],
        ),
        /* SizedBox(
          height: 30,
        ),*/
        Container(
          height: 320,
          //width: 330,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.fromLTRB(20, 45, 20, 20),
          child: Image.asset('assets/undraw_moving_re_pipp 1.png'),
        ),
        Container(
          //margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.search,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  AppLocalizations.of(context)!.screen2,
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
