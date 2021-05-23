import 'package:flutter/material.dart';
import 'package:gody/login_screen.dart';
import 'package:gody/signin.dart';

class StartUp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('GODY XIN CHAO', style: TextStyle(fontFamily: 'GoogleSans', fontWeight: FontWeight.bold),),),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 20)),
              Center(child: Image.asset('assets/images/logo.png', height: 175.0,),),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 20)),
              SizedBox(
                child: ElevatedButton(
                  child: Text('Đăng nhập'),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginScreen()));
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
              Padding(padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),),
                Center(child: Text('-HOẶC-', style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
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
            ],),
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),),
      ),
    );
  }
}