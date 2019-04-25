import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart'; // Developed by the community : WebviewScaffold


class MyPlaceholderWidget extends StatelessWidget {

  var url = 'https://www.google.com'  ;
  final key = UniqueKey();

  MyPlaceholderWidget(String url){
    this.url = url ;
  }

  @override
  Widget build(BuildContext context) {

   return WebviewScaffold(
        key: key,
        withJavascript: true,
        url: url,
        hidden: true, // add loading
        withLocalStorage: true,
        withZoom: true,
    );


  }

}
