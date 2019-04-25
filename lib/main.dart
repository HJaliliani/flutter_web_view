import 'package:flutter/material.dart';
import 'home_widget.dart';


void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView Flutter',
      home: Home(),

    );
  }
}
