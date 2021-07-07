import 'dart:core';

import 'package:flutter/material.dart';

class MonHoc {
  int? id;
  String? tenMon;
  double? DiemTB;
  String? icon;
  bool isChecked = false;
}

class DiemHKI extends MonHoc {
  List<double>? DiemHS1;
  List<double>? DiemHS2;
  List<double>? DiemHS3;
  List<double>? DiemTBMon;
  var TongHSMon;
  double DiemTong = 0;
  DiemHKI(
    id,
    tenMon,
    icon,
    isChecked,
    this.DiemHS1,
    this.DiemHS2,
    this.DiemHS3,
    this.DiemTBMon,
  );

  CheckIfNull(DiemHS1, DiemHS2, DiemHS3, DiemTBMon) {
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
        DiemTBMon.add(DiemHS3 * 3);
      }
      TongHSMon = TongHSMon + (DiemHS3.length) * 3;
    }
    if (DiemTBMon.isNotEmpty) {
      for (var i = 1; i <= DiemTBMon.length; i++) {
        DiemTong = DiemTong + DiemTBMon[i];
      }
      return this.DiemTB = DiemTong / TongHSMon;
    } else {
      return this.DiemTB = 0;
    }
  }
}

DiemHKI diali =
    DiemHKI(1, "Địa lí", "/assets/images", false, null, null, null, null);
DiemHKI lichsu =
    DiemHKI(2, "Lịch sử", "asset/images", false, null, null, null, null);
DiemHKI toan =
    DiemHKI(3, "Toán", "assets/images", false, null, null, null, null);
DiemHKI vatli =
    DiemHKI(4, "Vật lí", "assets/images", false, null, null, null, null);
DiemHKI anh =
    DiemHKI(5, "Tiếng Anh", "assets/images", false, null, null, null, null);
DiemHKI nguvan =
    DiemHKI(6, "Ngữ Văn", "assets/images", false, null, null, null, null);
DiemHKI tin = DiemHKI(7, "Tin", "assets/images", false, null, null, null, null);
DiemHKI gdcd =
    DiemHKI(8, "GDCD", "assets/images", false, null, null, null, null);
DiemHKI sinh =
    DiemHKI(9, "Sinh Học", "assets/images", false, null, null, null, null);
DiemHKI cn =
    DiemHKI(10, "Công Nghệ", "assets/images", false, null, null, null, null);
DiemHKI gdqp =
    DiemHKI(11, "GDQP", "assets/images", false, null, null, null, null);
DiemHKI amnhac =
    DiemHKI(12, "Âm Nhạc", "assets/images", false, null, null, null, null);
DiemHKI mythuat =
    DiemHKI(13, "Mỹ Thuật", "assets/images", false, null, null, null, null);
DiemHKI theduc =
    DiemHKI(14, "Thể dục", "assets/images", false, null, null, null, null);
DiemHKI hoahoc =
    DiemHKI(15, "Hóa học", "assets/images", false, null, null, null, null);

List<DiemHKI> diemHKI = [
  diali,
  lichsu,
  anh,
  toan,
  amnhac,
  mythuat,
  hoahoc,
  nguvan,
  tin,
  cn,
  gdcd,
  sinh,
  gdqp,
  theduc,
  vatli
];
