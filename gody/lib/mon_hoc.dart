import 'dart:core';

import 'package:flutter/material.dart';

class MonHoc {
  var id;
  var tenMon;
  var DiemTB;
}

class DiemHKI extends MonHoc {
  var DiemHS1 = [];
  var DiemHS2 = [];
  var DiemHS3 = [];
  var DiemTBMon = [];
  var TongHSMon;
  var DiemTong;
  DiemHKI(id, tenMon, this.DiemHS1, this.DiemHS2, this.DiemHS3, this.DiemTBMon,
      DiemTB);

  void CheckIfNull(DiemHS1, DiemHS2, DiemHS3, DiemTBMon) {
    DiemTong = 0;
    if (DiemHS1.isNotEmpty) {
      DiemTBMon.add(DiemHS1);
      TongHSMon = DiemHS1.length;
    }
    if (DiemHS2.isNotEmpty) {
      DiemTBMon.add(DiemHS2);
      TongHSMon = TongHSMon + (DiemHS2.length - 1) * 2;
    }
    if (DiemHS3.isNotEmpty) {
      DiemTBMon.add(DiemHS3);
      TongHSMon = TongHSMon + (DiemHS3.length - 1) * 3;
    }
    if (DiemTBMon.isNotEmpty) {
      for (var i = 1; i <= DiemTBMon.length; i++) {
        DiemTong = DiemTong + DiemTBMon[i];
      }
      return DiemTB = DiemTong / TongHSMon;
    }
  }
}
