import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './screens/loading_screen.dart';
import 'screens/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
