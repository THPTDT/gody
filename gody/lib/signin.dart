import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override 
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/images/logo.png', height: 60.0),),
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              Center(child: Text('ĐĂNG KÝ', style: TextStyle(
                fontFamily: 'GoogleSans',
                fontSize: 30.0,
              ),)),
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              TextField(decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Nhập tên tài khoản người dùng mới',
                labelStyle: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),),
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              TextField(decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Nhập email người dùng mới',
                labelStyle: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),), 
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Nhập mật khẩu người dùng mới',
                labelStyle: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),), 
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Nhập lại mật khẩu người dùng mới',
                labelStyle: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Đăng ký'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                    textStyle: TextStyle(fontFamily: 'GoogleSans', fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              Center(child: Text('-HOẶC-',style: TextStyle(
                fontFamily: 'GoogleSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),)),
              Center(child: Text('Đăng nhập với:',style: TextStyle(
                fontFamily: 'GoogleSans',
                fontSize: 14.0,
              ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
