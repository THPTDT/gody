import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leadingWidth: 0.0,
            actions: [
              Image.asset('assets/images/zalo.png', height: 30.0),
            ],
            title: Text(
              'GODY',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            elevation: 1.0,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Diem'),
                Tab(text: 'TKB'),
                Tab(text: 'Cong viec'),
                Tab(text: 'Khac'),
              ],
            ),
          ),
          body: TabBarView(
            children: [],
          ),
        ),
      ),
    );
  }
}
