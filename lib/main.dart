import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:rdsboxapp/screens/Home_Page.dart';
import 'package:rdsboxapp/screens/Notifications.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/boxes/MyBox.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/Settings.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/boxes/RyadahBox.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/cards.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/us.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/users.dart';
import 'package:rdsboxapp/screens/Sign_in.dart';
import 'package:rdsboxapp/screens/Sign_up%20Screens/Sign_up.dart';
import 'package:rdsboxapp/screens/Sign_up%20Screens/Verification_Screen.dart';
import 'package:rdsboxapp/screens/intro_screen/screen1.dart';
import 'package:rdsboxapp/screens/intro_screen/intro_screens.dart';
import 'package:rdsboxapp/screens/intro_screen/splash_screen.dart';
import 'package:rdsboxapp/theme/theme_manager.dart';
import 'package:getx_translator/getx_translator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'RDSBPX',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
