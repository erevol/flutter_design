import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_1/src/pages/basic_page.dart';
import 'package:design_1/src/pages/scroll_page.dart';
import 'package:design_1/src/pages/buttons_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Color.fromRGBO(236, 98, 188, 1.0),
    // ));

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Design App',
        initialRoute: 'buttons',
        routes: {
          'basic': (BuildContext context) => BasicPage(),
          'scroll': (BuildContext context) => ScrollPage(),
          'buttons': (BuildContext context) => ButtonsPage(),
        });
  }
}
