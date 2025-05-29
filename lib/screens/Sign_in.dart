//import 'dart:ffi';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Sign_up%20Screens/Verification_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 220, 220),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      AppLocalizations.of(context)!.skip,
                    ),
                  ),
                ),
                Container(
                    // margin: EdgeInsets.fromLTRB(110, 0, 0, 0),
                    height: 70,
                    width: 50,
                    child: Image.asset("assets/logo.png")),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppLocalizations.of(context)!.arabic,
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              width: 250,

              /// margin: EdgeInsets.all(60.0),
              child: Image.asset('assets/undraw_mailbox_re_dvds 1.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: 400,
              width: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.phone_android_sharp,
                        color: Colors.blue,
                      ),
                      Text(
                        AppLocalizations.of(context)!.mobilephone,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.phonenumber,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Verification_Screen()));
                      },
                      child: Text(
                        AppLocalizations.of(context)!.sendotp,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppLocalizations.of(context)!.notregisteryet),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            AppLocalizations.of(context)!.register,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Text(AppLocalizations.of(context)!.or),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.signinasadriver,
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
