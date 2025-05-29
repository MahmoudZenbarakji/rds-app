import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rdsboxapp/screens/Home_Page.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class Verification_Screen extends StatefulWidget {
  const Verification_Screen({super.key});

  @override
  State<Verification_Screen> createState() => _Verification_ScreenState();
}

class _Verification_ScreenState extends State<Verification_Screen> {
  bool isbuttonactive = false;
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(() {
      final isbuttonactive = _controller.text.isNotEmpty;
      setState(() => this.isbuttonactive = isbuttonactive);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 215, 215),
      body: SafeArea(
          child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Sign_in()));
                      },
                      icon: Icon(Icons.arrow_back))),
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
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          Container(
            height: 150,
            child: Center(
              child: Image.asset('assets/undraw_forgot_password_re_hxwm 1.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Expanded(
              flex: 1,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Text(
                        AppLocalizations.of(context)!.verificationcode,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(AppLocalizations.of(context)!.verifyscreen),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            controller: _controller,
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.topnotrecieved,
                        style: TextStyle(color: Colors.amber),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          //color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),

                      //height: 200,
                      width: 310,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: isbuttonactive
                            ? () {
                                setState(() => isbuttonactive = false);
                                _controller.clear();

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home_Page()));
                              }
                            : null,
                        child: Text(
                          AppLocalizations.of(context)!.verify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
