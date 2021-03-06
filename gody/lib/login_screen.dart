import 'package:flutter/material.dart';
import 'package:gody/forgot_password.dart';
import 'package:gody/signin.dart';
import 'package:gody/home_screen.dart';
import 'main.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool logged_in = false;

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class LoginChecked {
  static LogedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('logged_in', true);
  }

  static CheckedLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool logged_in = (prefs.getBool('logged_in') ?? false);
    return logged_in;
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                      child: Text(
                        'Quên mật khẩu?',
                        style: TextStyle(
                          fontFamily: 'GoogleSans',
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
                SizedBox(
                  child: ElevatedButton(
                    child: Text('Đăng nhập'),
                    onPressed: () {
                      setState(() {
                        LoginChecked.LogedIn();
                      });
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()));
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
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                ),
                Center(
                  child: Text(
                    '-HOẶC-',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'GoogleSans',
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/facebook.png', height: 30.0),
                        Text('Dang nhap voi Facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GoogleSans',
                              fontSize: 20,
                            )),
                      ],
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        alignment: Alignment.center,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png', height: 30.0),
                        Text('Dang nhap voi Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GoogleSans',
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
