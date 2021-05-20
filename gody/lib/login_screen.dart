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
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo.png', height: 70.0),
              ),
              Text(
                "ĐĂNG NHẬP",
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontFamily: 'GoogleSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                  hintText: 'Nhập tên người dùng hoặc email',
                  hintStyle: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'GoogleSans',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Nhập mật khẩu của bạn',
                      hintStyle: TextStyle(
                        fontFamily: 'GoogleSans',
                      ),
                    ),
                  ),
                  Text(
                    'Hien',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(
                child: ElevatedButton(
                  child: Text('Đăng nhập'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    textStyle: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                height: 30.0,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
