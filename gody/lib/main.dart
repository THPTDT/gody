//Thêm package cần thiết
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:gody/login_screen.dart';

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
  //Màn hình giới thiệu
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Quản lý thời gian",
        body: "Với Gody bạn có thể  quản lý thời gian biểu dễ dàng!",
        image: Center(
            child: Image.asset('assets/images/clock.png', height: 175.0)),
        footer: Text('Cùng khám phá nào!!!'),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 20.0,
              fontWeight: FontWeight.w700),
          bodyTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        title: 'Quản lý điểm số',
        body: 'Gody giúp bạn dễ dàng quản lý điểm số của mình!',
        image: Center(
            child: Image.asset('assets/images/point.png', height: 175.0)),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 20.0,
              fontWeight: FontWeight.w700),
          bodyTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
      ),
      PageViewModel(
        title: 'Sắp xếp thời gian',
        body: 'Gody giúp bạn tối ưu việc sắp xếp thời gian!',
        image: Center(
            child: Image.asset('assets/images/timetable.png', height: 175.0)),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 20.0,
              fontWeight: FontWeight.w700),
          bodyTextStyle: TextStyle(
              fontFamily: 'GoogleSans',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Chào mừng đến với Gody!')),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showDoneButton: true,
        done: const Text(' Xong ',
            style: TextStyle(
                fontFamily: 'GoogleSans',
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        next: const Text(' Tiếp ',
            style: TextStyle(
                fontFamily: 'GoogleSans',
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        doneColor: Colors.lightBlue[400],
        nextColor: Colors.lightBlue[400],
        onDone: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      ),
    );
  }
}
