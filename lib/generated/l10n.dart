// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `arabic`
  String get arabic {
    return Intl.message(
      'arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `shopping`
  String get shopping {
    return Intl.message(
      'shopping',
      name: 'shopping',
      desc: '',
      args: [],
    );
  }

  /// `Now you can shop from your phone with easy and simplicity`
  String get screen1 {
    return Intl.message(
      'Now you can shop from your phone with easy and simplicity',
      name: 'screen1',
      desc: '',
      args: [],
    );
  }

  /// `search`
  String get search {
    return Intl.message(
      'search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Find your product you want with the right specificaation for you`
  String get screen2 {
    return Intl.message(
      'Find your product you want with the right specificaation for you',
      name: 'screen2',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `you can make the product that you liked and you can also tag the ...`
  String get screen3 {
    return Intl.message(
      'you can make the product that you liked and you can also tag the ...',
      name: 'screen3',
      desc: '',
      args: [],
    );
  }

  /// `get started`
  String get getstarted {
    return Intl.message(
      'get started',
      name: 'getstarted',
      desc: '',
      args: [],
    );
  }

  /// `mobile phone`
  String get mobilephone {
    return Intl.message(
      'mobile phone',
      name: 'mobilephone',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phonenumber {
    return Intl.message(
      'phone number',
      name: 'phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `send otp`
  String get sendotp {
    return Intl.message(
      'send otp',
      name: 'sendotp',
      desc: '',
      args: [],
    );
  }

  /// `not register yet`
  String get notregisteryet {
    return Intl.message(
      'not register yet',
      name: 'notregisteryet',
      desc: '',
      args: [],
    );
  }

  /// `register`
  String get register {
    return Intl.message(
      'register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `sign in as a driver`
  String get signinasadriver {
    return Intl.message(
      'sign in as a driver',
      name: 'signinasadriver',
      desc: '',
      args: [],
    );
  }

  /// `verification code`
  String get verificationcode {
    return Intl.message(
      'verification code',
      name: 'verificationcode',
      desc: '',
      args: [],
    );
  }

  /// `we have sent the code verification to your mobile number`
  String get verifyscreen {
    return Intl.message(
      'we have sent the code verification to your mobile number',
      name: 'verifyscreen',
      desc: '',
      args: [],
    );
  }

  /// `top not recieved`
  String get topnotrecieved {
    return Intl.message(
      'top not recieved',
      name: 'topnotrecieved',
      desc: '',
      args: [],
    );
  }

  /// `verify`
  String get verify {
    return Intl.message(
      'verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `myboxes`
  String get myboxes {
    return Intl.message(
      'myboxes',
      name: 'myboxes',
      desc: '',
      args: [],
    );
  }

  /// `invoices`
  String get invoices {
    return Intl.message(
      'invoices',
      name: 'invoices',
      desc: '',
      args: [],
    );
  }

  /// `Box settings`
  String get Boxsettings {
    return Intl.message(
      'Box settings',
      name: 'Boxsettings',
      desc: '',
      args: [],
    );
  }

  /// `Enable box keboard`
  String get enableboxkeboard {
    return Intl.message(
      'Enable box keboard',
      name: 'enableboxkeboard',
      desc: '',
      args: [],
    );
  }

  /// `Reboot box`
  String get rebootbox {
    return Intl.message(
      'Reboot box',
      name: 'rebootbox',
      desc: '',
      args: [],
    );
  }

  /// `Update wifi settings`
  String get updatewifisettings {
    return Intl.message(
      'Update wifi settings',
      name: 'updatewifisettings',
      desc: '',
      args: [],
    );
  }

  /// `update cellular settings`
  String get updatecellularsettings {
    return Intl.message(
      'update cellular settings',
      name: 'updatecellularsettings',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `App mode`
  String get appmode {
    return Intl.message(
      'App mode',
      name: 'appmode',
      desc: '',
      args: [],
    );
  }

  /// `notification`
  String get notification {
    return Intl.message(
      'notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `account`
  String get account {
    return Intl.message(
      'account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `password and security`
  String get passwordandsecurity {
    return Intl.message(
      'password and security',
      name: 'passwordandsecurity',
      desc: '',
      args: [],
    );
  }

  /// `logout`
  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
