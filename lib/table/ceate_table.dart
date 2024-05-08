

import 'package:flutter/material.dart';

class CreateTable extends StatelessWidget {
//
//  static const String routeName = "create_table";

  const CreateTable({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed

                ),
                padding: EdgeInsets.all(10.0),
                child: Text(

                  'Text',
                  style: TextStyle(fontSize: 20.0 ),
                ),
              ),
              SizedBox(height: 50,),

                 Padding(
                   padding: EdgeInsets.all(10),
                   child: Container(
                     decoration: BoxDecoration(

                       borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                     ),
                       child: Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text('Row 1, Col 1'),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text('Row 1, Col 2'),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text('Row 2, Col 1'),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text('Row 2, Col 2'),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text('Row 3, Col 1'),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text('Row 3, Col 2'),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text('Row 4, Col 1'),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text('Row 4, Col 2'),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text('Row 5, Col 1'),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text('Row 5, Col 2'),
                              ),
                            ),
                          ],
                        ),
                      ],
                                     ),
                   ),
                 ),

            ],
          ),

    );
  }
}
