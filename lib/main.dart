import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:summarize_and_translation_app/testt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // Future<String> get _localPath async {
  //   final directory = await getApplicationDocumentsDirectory();

  //   return directory.path;
  // }

  // Future<File> get _localFile async {
  //   final path = await _localPath;
  //   return File('$path/counter.txt');
  // }

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    // test().requestStoragePermission();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: test()));
  }
}
