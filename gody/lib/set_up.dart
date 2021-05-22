

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SetUp extends StatefulWidget {
  var items = ["Thu Hai", "Thu Ba", "Thu Tu", "Thu Nam", "Thu Sau", "Thu Bay", "Chu Nhat"];
  _SetUpState createState() => _SetUpState();
}

class _SetUpState extends State<SetUp> {
  @override
  Widget build(BuildContext context){
      var items = ["Thu Hai", "Thu Ba", "Thu Tu", "Thu Nam", "Thu Sau", "Thu Bay", "Chu Nhat"];
        return new MaterialApp(
          home: Scaffold(
            body: Container(
              child: Column(
                children: [

          ],
        ),
      ),
    ),
    );
  }
}

