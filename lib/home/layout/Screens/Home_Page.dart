import 'package:flutter/material.dart';
import 'package:summarize_and_translation_app/testt.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  Future _locatefile() async {

    FilePickerResult? result =
    await FilePicker.platform.pickFiles(type: FileType.any);
    File file;

    if (result != null) {
      file = File(result.files.single.path!);
      return file;
    } else {
      // User canceled the picker
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        File file = await _locatefile();
        print("file path ${file.path}");
      },
      child: Center(
        child: Container(
          child: const Text(
            textAlign: TextAlign.center,
            "press me ",
            style: const TextStyle(fontSize: 20),
          ),
          width: 100,
          height: 50,
          color: Colors.grey,
        ),
      ),
    );
  }

}