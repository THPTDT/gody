import 'package:flutter/material.dart';
import 'package:gody/mon_hoc.dart';

bool hk = true;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    IsChecked();
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 1,
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
              tabs: [Tab(text: 'Điểm')],
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
                  Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
                  Flexible(
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      children: List.generate(DiemHKI.length, (index) {
                        return GestureDetector(
                            onTap: () {},
                            child: Card(
                                elevation: 2.0,
                                child: SizedBox(
                                  height: 40.0,
                                  width: 40.0,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(DiemHKI[index].tenMon,
                                            style: TextStyle(
                                              fontFamily: 'GoogleSans',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 25.0,
                                            )),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 20, 0, 20),
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                  DiemHKI[index]
                                                      .CheckIfNull()
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontFamily: 'GoogleSans',
                                                      fontSize: 30.0,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 30, 10),
                                                  child: Image.asset(
                                                      DiemHKI[index].icon,
                                                      height: 45))
                                            ]),
                                      ]),
                                )));
                      }),
                    ),
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
