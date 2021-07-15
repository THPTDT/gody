import 'dart:core';

import 'package:flutter/material.dart';

class MonHoc {
  int id = 0;
  String tenMon = '';
  double DiemTB = 0;
  String icon = '';
  bool isChecked = false;
  MonHoc(this.id, this.tenMon, this.icon, this.isChecked);
}

class HKI extends MonHoc {
  List<double> DiemHS1 = [];
  List<double> DiemHS2 = [];
  List<double> DiemHS3 = [];
  List<double> DiemTBMon = [];
  var TongHSMon;
  double DiemTong = 0;
  HKI(
    int id,
    String tenMon,
    String icon,
    bool isChecked,
  ) : super(id, tenMon, icon, isChecked);

  CheckIfNull() {
    DiemTong = 0;
    if (DiemHS1.isNotEmpty) {
      for (var i = 1; i <= DiemHS1.length; i++) {
        DiemTBMon.add(DiemHS1[i]);
      }
      TongHSMon = DiemHS1.length;
    }
    if (DiemHS2.isNotEmpty) {
      for (var i = 1; i <= DiemHS2.length; i++) {
        DiemTBMon.add(DiemHS2[i] * 2);
      }
      TongHSMon = TongHSMon + (DiemHS2.length) * 2;
    }
    if (DiemHS3.isNotEmpty) {
      for (var i = 1; i <= DiemHS3.length; i++) {
        DiemTBMon.add(DiemHS3[i] * 3);
      }
      TongHSMon = TongHSMon + (DiemHS3.length) * 3;
    }
    if (DiemTBMon.isNotEmpty) {
      for (var i = 1; i <= DiemTBMon.length; i++) {
        DiemTong = DiemTong + DiemTBMon[i];
      }
      return DiemTB = DiemTong / TongHSMon;
    } else {
      return DiemTB = 0.0;
    }
  }
}

var vatly = new HKI(1, "Vật lý", "assets/images/vatly.png", true);
var toan = new HKI(2, "Toán", "assets/images/toan.png", true);
var tienganh = new HKI(3, "Anh văn", "assets/images/tienganh.png", true);
var hoahoc = new HKI(4, "Hóa học", "assets/images/hoahoc.png", true);
var sinh = new HKI(5, "Sinh học", "assets/images/sinh.png", true);
var amnhac = new HKI(6, "Âm nhạc", "assets/images/amnhac.png", true);
var gdcd = new HKI(7, "GDCD", "assets/images/gdcd.png", true);
var gdqp = new HKI(8, "GDQP", "assets/images/gdqp.png", true);
var mythuat = new HKI(9, "Mỹ thuật", "assets/images/mythuat.png", true);
var dialy = new HKI(10, "Địa lý", "assets/images/dialy.png", true);
var cn = new HKI(11, "Công nghệ", "assets/images/cn.png", true);
var lichsu = new HKI(12, "Lịch Sử", "assets/images/lichsu.png", true);
var theduc = new HKI(13, "Thể Dục", "assets/images/theduc.png", true);
var van = new HKI(14, "Ngữ Văn", "assets/images/van.png", true);
var tinhoc = new HKI(15, "Tin Học", "assets/images/tinhoc.png", true);

List<HKI> hki = [
  toan,
  tienganh,
  hoahoc,
  sinh,
  lichsu,
  dialy,
  vatly,
  tinhoc,
  cn,
  gdcd,
  gdqp,
  amnhac,
  mythuat,
  theduc,
  van
];
List DiemHKI = [];
void IsChecked() {
  DiemHKI.addAll(hki.where((element) => element.isChecked == true).toList());
}
