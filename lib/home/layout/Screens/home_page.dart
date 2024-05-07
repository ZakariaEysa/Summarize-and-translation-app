import 'package:flutter/material.dart';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  bool fileExists = false;
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
    // ignore: unused_local_variable
    String Contents = "";
    return Padding(
        padding: const EdgeInsets.only(top: 140, left: 40, right: 30),
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                onTap: () async {
                  File file = await _locatefile();

                  // ignore: unnecessary_null_comparison
                  if (file != null) {
                    fileExists = true;

                    // Read the file
                    final contents = await file.readAsString();
                    Contents = contents;

                    showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.success(
                        message:
                        "File Uploaded Successfully",
                      ),
                    );





                  }

                  // print("file contains ${Contents}");
                },
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 80,
                    color: Colors.teal[100],
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Upload File ",
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (fileExists == true) {
                  } else {
                    showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.error(
                        message: " u did not Upload File",
                      ),
                    );

                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Process ",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  width: 150,
                  height: 80,
                  color: Colors.teal[100],
                ),
              ),
            ],
          )




        ]));
  }
}
