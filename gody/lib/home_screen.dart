import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String _textButton = "Hoc ki 1";
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
                              _stateChange();
                            },
                            child: Text(_textButton),
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

  void _stateChange() {
    setState(() {
      _textButton = "Hoc ki 2";
    });
  }
}

class MonHoc {
  final String title;
  final Image image;
  final bool isChecked;
  MonHoc({
    required this.title,
    required this.image,
    required this.isChecked,
  });
}

List<MonHoc> monhoc = <MonHoc>[
  MonHoc(
      title: 'Toan',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'The Duc',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Dia Li',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Lich Su',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Tin Hoc',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Quoc Phong',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Sinh Hoc',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Anh Van',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Hoa Hoc',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Vat Li',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Cong Nghe',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'Ngu Van',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false),
  MonHoc(
      title: 'GDCD',
      image: Image.asset('assets/images/zalo.png', height: 30.0),
      isChecked: false)
];

class CheckBox {
  Map<String, bool> checked =
      Map.fromIterable(monhoc, key: (v) => v.title, value: (v) => v.isChecked);
}
