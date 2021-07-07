import 'package:flutter/material.dart';

bool hk = true;

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
                Tab(text: 'Điểm'),
                Tab(text: 'TKB'),
                Tab(text: 'Công việc'),
                Tab(text: 'Khác'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                hk = !hk;
                              });
                            },
                            child: hk ? Text('Học kì 1') : Text('Học kì 2'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
