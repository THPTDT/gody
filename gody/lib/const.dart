//Thêm thư viện Material App 
import 'package:flutter/material.dart';

//Định nghĩa hằng cho màu sắc
const PrimaryColor = Color(OxFF03A9F4); //Màu xanh (lightblue)
const PrimaryLightColor = Color(0xFF80DEEA); //Màu xanh Cyan 

//Định nghĩa hằng tạo màu Gradient 
const GradientColor = (
	begin: Alignment.topLeft, //Bắt đầu từ phía trên bên trái 
	end: Alignment.bottomRight,//Kết thúc ở góc dưới bên phải 
	colors: Color(0xFF64B5F6), Color(0xFF2196F3),// Màu xanh nhạt và xanh nước biển
	);

// Định nghĩa hằng cho thời gian thực hiện hiệu ứng 
const AnimationDuration = Duration(milliseconds: 250);



