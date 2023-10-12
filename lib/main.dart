import 'package:ecoworld/Nav.dart';
import 'package:ecoworld/pages/CancelMeet.dart';
import 'package:ecoworld/pages/EditProfile.dart';
import 'package:ecoworld/pages/Sell_Scrap.dart';
import 'package:ecoworld/pages/community.dart';
import 'package:ecoworld/pages/editMeet.dart';
import 'package:ecoworld/pages/home.dart';
import 'package:ecoworld/pages/login.dart';
import 'package:ecoworld/pages/profile.dart';

import 'package:ecoworld/signup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  //await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // get homeRoute => 'homepage';

  // get communityRoute => 'communitypage';

  // get ProfileRoute => 'profilepage';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoWorld',
      theme: ThemeData(),

      //home: CommunityPage(),

      home: const LoginPage(),

      // home: MyHomePage(),

      //home: const SignUp(),

      // theme: ThemeData(

      //     // This is the theme of your application.
      //     //
      //     // Try running your application with "flutter run". You'll see the
      //     // application has a blue toolbar. Then, without quitting the app, try
      //     // changing the primarySwatch below to Colors.green and then invoke
      //     // "hot reload" (press "r" in the console where you ran "flutter run",
      //     // or simply save your changes to "hot reload" in a Flutter IDE).
      //     // Notice that the counter didn't reset back to zero; the application
      //     // is not restarted.
      //     // primarySwatch: Colors.blue,

      //     ),

      //home: LoginPage(),

      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      // primarySwatch: Colors.blue,

      //home: ProfilePage(),
    );
  }
}
