import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tikodc/tikodc/AnimationPage.dart';
import 'package:tikodc/tikodc/Coonexion.dart';
import 'package:tikodc/tikodc/Home.dart';
import 'package:tikodc/tikodc/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicODC',
     theme: ThemeData(
       textTheme: GoogleFonts.notoSansAdlamTextTheme(
         Theme.of(context).textTheme,
       )
     ),
     debugShowCheckedModeBanner: false,
      home:   AnimationPage(),
    );
  }
}


