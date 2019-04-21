import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MyPlaceholderWidget extends StatelessWidget {

  var url = 'https://www.google.com'  ;
  final key = UniqueKey();

  MyPlaceholderWidget(String url){
    this.url = url ;
  }

  @override
  Widget build(BuildContext context) {

   return WebView(
        key: key,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: url
    );
  }
}
