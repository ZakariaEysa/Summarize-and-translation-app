import 'package:flutter/material.dart';

import 'package:summarize_and_translation_app/summaries/arabic_text_screen.dart';
import 'package:summarize_and_translation_app/summaries/english_text_screen.dart';
import 'package:summarize_and_translation_app/testt.dart';
import 'package:summarize_and_translation_app/home/layout/Screens/home_page.dart';
import 'home/layout/Widgets/custom_buttom_sheet.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          EnglishTextScreen.routeName : (context) => const EnglishTextScreen(),
          ArabicTextScreen.routeName : (context) => const ArabicTextScreen(),
        },
        initialRoute: EnglishTextScreen.routeName ,
    );


  }
}
