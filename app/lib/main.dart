import 'package:app/page/about_page.dart';
import 'package:app/page/support_page.dart';
import 'package:flutter/material.dart';

import 'page/home_page.dart';

void main() => runApp(CodmingOutApp());

class CodmingOutApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodmingOut Web App',
      routes: {
        '/' : (context) => HomePage(),
        HomePage.routeName : (context) => HomePage(),
        SupportPage.routeName : (context) => SupportPage(),
        AboutPage.routeName : (context) => AboutPage()
      },
    );
  }
}