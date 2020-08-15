import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './Pages/LoadingPage.dart';
import './Pages/FlipPage.dart';
import './Pages/SearchPage.dart';

import './Utils/Image.dart';

import './UI/ImageLoadingOverLay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FlipPage(),
      routes: {
        '/': (context) => LoadingPage(),
        '/flip': (context) => FlipPage(),
        '/search': (context) => SearchPage()
      },
    );
  }
}
