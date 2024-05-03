import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class test extends StatefulWidget {
  Future<void> requestStoragePermission() async {
    final status = await Permission.storage.request();
    if (status == PermissionStatus.granted) {
      print("Permission granted");
    } else {
      print("Permission denied");
    }
  }

  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // test().requestStoragePermission();
  }

  Future _locatefile() async {
    print("eeeeeeeeeeeeeeeeh");

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
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        print("file path ${file.path}");
      },
      child: Center(
        child: Container(
          child: Text(
            textAlign: TextAlign.center,
            "press me ",
            style: TextStyle(fontSize: 20),
          ),
          width: 100,
          height: 50,
          color: Colors.grey,
        ),
      ),
    );
  }
}
