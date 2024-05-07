import 'package:flutter/material.dart';
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
    return  MaterialApp(debugShowCheckedModeBanner: false,home: Scaffold(

      bottomSheet: CustomButtomSheet()
      ,
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: const Text("Summarize and Translation App",),),
      body: HomePage(),backgroundColor: Colors.teal[400],));
  }
}
