import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo.png', height: 70.0),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
              Text(
                "ĐĂNG NHẬP",
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
