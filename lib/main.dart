import 'package:animation_flutter_app/views/screen/cartPage.dart';
import 'package:animation_flutter_app/views/screen/detailPage.dart';
import 'package:animation_flutter_app/views/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    getPages: [
      // GetPage(
      //   name: '/',page: ()=> HomePage(),
      // ),
      GetPage(
        name: '/',page: ()=> DetailPage(),
      ),GetPage(
        name: '/Cart',page: ()=> CartPage(),
      ),
    ],
  ));
}