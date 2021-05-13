//Thêm package cần thiết
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'package:introduction_screen/introduction_screen.dart';

//Gọi hàm main() chạy app
void main() => runApp(MyApp());

//Khởi tạo lớp MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Splash(),
    );
  }
}

//Khởi tạo lớp Splash
class Splash extends StatefulWidget {
  @override
  splashState createState() => new splashState();
}

//Khởi tạo lớp SplashState
class splashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future kiemtraSeen() async {
    //Xử lý bất đồng bộ để lấy giá trị trả về của hàm kiemtraSeen
    SharedPreferences prefs =
        await SharedPreferences.getInstance(); //Đợi lấy giá trị của prefs
    bool _seen = (prefs.getBool('seen') ??
        false); //Kiểm tra giá trị của biến seen, Nếu prefs null sẽ lấy giá trị false ngược lại lấy giá trị của prefs
    if (_seen) {
      //Nếu seen=true
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Home()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) =>
      kiemtraSeen(); //Gọi hàm kiemtraSeen để kiểm tra
  @override
  Widget build(BuildContext context) {
    return Scaffold(); //Màn hình Loading
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Màn hình chính khi vào app
    return new Scaffold();
  }
}

class IntroScreen extends StatefulWidget {
  introScreenState createState() => introScreenState();
}

class introScreenState extends State<IntroScreen> {
  //Màn hifng giới thiệu
  List<PageViewModel> getPages() {
    return [
      PageViewModel(),
      PageViewModel(),
      PageViewModel(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.amberAccent,
        pages: getPages(),
        showNextButton: true,
        done: Text('Tiếp'),
        onDone: () {},
      ),
    );
  }
}
