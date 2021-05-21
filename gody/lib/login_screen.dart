import 'package:flutter/material.dart';
import 'package:gody/forgot_password.dart';

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
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
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
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
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
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
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
                    'Hiện',
                    style: TextStyle(
                      fontFamily: 'GoogleSans',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                  child: Text('Quên mật khẩu?',style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),),
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ForgotPassword()));
                  },),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
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
                height: 50.0,
                width: double.infinity,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),),
                Center(child: Text('-HOẶC-', style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  child: Text('Đăng ký'),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SignIn()));
                  },
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
                height: 50.0,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
