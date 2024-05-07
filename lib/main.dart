
import 'package:flutter/material.dart';
import 'package:summarize_and_translation_app/table/ceate_table.dart';
import 'package:summarize_and_translation_app/testt.dart';

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
    return const MaterialApp(

        home: Scaffold(body: CreateTable()));
  }
}
