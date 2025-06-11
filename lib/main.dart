import 'package:flutter/material.dart';
import 'home_widget.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key); // Added const constructor with optional key

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.blue, // status bar color
    ));*/

    return MaterialApp(
      title: 'WebView Flutter',
      home: Home(), // Assuming Home() will be updated for null safety
    );
  }
}
