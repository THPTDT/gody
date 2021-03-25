/Thêm thư viện Material App và thư viện Widgets 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Định nghĩa lớp kích thước màn hình
class SizeConfig {
		static MediaQueryData _mediaQueryData; //Định nghĩa biến ẩn danh chứa thông tin màn hình 
		static double screenWidth; //Độ rộng màn hình
		static double screenHeight; //Độ cao màn hình
		static double blockSizeHorizontal;
		static double blockSizeVertical;
		static double _safeAreaHorizontal;
		static double _safeAreaVertical;
		static double safeBlockHorizontal;
		static double safeBlockVertical; 

	void init(BuildContext context){
		_mediaQueryData = MediaQuery.of(context);//Lấy thông tin màn hình 
		screenWidth = mediaQueryData.size.width;//Lấy thông tin về độ rộng màn hình 
		screenHeight = mediaQueryData.size.height;//Lấy thông tin về độc cao màn hình
		blockSizeHorizontal = screenWidth/100;
		blockSizeVertical = screenHeight/100;
		_safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
		_safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
		 safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
	    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;
		}
}