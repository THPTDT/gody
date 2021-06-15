//Thêm package cần thiết
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:gody/start_up.dart';
import 'package:gody/home_screen.dart';
import 'package:gody/login_screen.dart';
import 'package:intl/intl.dart';

//Gọi hàm main() chạy app
void main() {
  final now = DateTime.now();
  runApp(MyApp());
}

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
  _SplashState createState() => new _SplashState();
}

//Khởi tạo lớp SplashState
class _SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future kiemtraSeen() async {
    //Xử lý bất đồng bộ để lấy giá trị trả về của hàm kiemtraSeen
    SharedPreferences prefs =
        await SharedPreferences.getInstance(); //Đợi lấy giá trị của prefs
    final bool _seen = (prefs.getBool('seen') ?? false);
//Kiểm tra giá trị của biến seen, Nếu prefs null sẽ lấy giá trị false ngược lại lấy giá trị của prefs
    if (_seen == true) {
      //Nếu seen=true_seen == true && _logedin
      LoginChecked();
    } else if (_seen == false) {
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
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 175.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
              ),
              Center(
                  child: Text(' Loading... ',
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ),
      ),
    ); //Màn hình Loading
  }
}

class IntroScreen extends StatefulWidget {
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
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
              fontWeight: FontWeight.normal),
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
              fontWeight: FontWeight.normal),
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
              fontWeight: FontWeight.normal),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
            child: Text('GODY',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(
              fontFamily: 'GoogleSans',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        next: const Text('Next',
            style: TextStyle(
                fontFamily: 'GoogleSans',
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        doneColor: Colors.blue,
        nextColor: Colors.blue,
        onDone: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => StartUp()));
        },
      ),
    );
  }
}
