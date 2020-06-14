import 'package:flutter/material.dart';

import './Pages/LoadingPage.dart';
import './Pages/FlipPage.dart';
import './Pages/SearchPage.dart';

import './Utils/Image.dart';

import './UI/ImageLoadingOverLay.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
   //home: FlipPage(),
    routes: {
      '/' :(context)=>LoadingPage(),
      '/flip':(context)=>FlipPage(),
      '/search':(context)=>SearchPage()
    },
  ));
}