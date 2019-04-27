import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart'; // Developed by the community : WebviewScaffold https://pub.dartlang.org/packages/flutter_webview_plugin


class MyPlaceholderWidget extends StatelessWidget {

  var url = 'https://www.google.com'  ;
  final key = UniqueKey();

 // final flutterWebviewPlugin =   FlutterWebviewPlugin();

  MyPlaceholderWidget(String url) {
    this.url = url;
 //   flutterWebviewPlugin.onHttpError.listen((WebViewHttpError item) {
   //   print("   WebView    onHttpError.code: ${item.code}");
 //   });

   // flutterWebviewPlugin.launch(url, hidden: true);
  }



    @override
  Widget build(BuildContext context) {

   return WebviewScaffold(
        key: key,
        withJavascript: true,
        url: url,
hidden: true,
        withLocalStorage: true,
        withZoom: true,
    );


  }

}
