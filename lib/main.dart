import 'package:flutter/material.dart';
import 'test_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(),
      home: TestPage(),
    );
  }
}
