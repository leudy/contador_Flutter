import 'package:flutter/material.dart';

import 'package:first_app_fh/Views/home.dart';
import 'package:first_app_fh/Views/homefull.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ContadorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
