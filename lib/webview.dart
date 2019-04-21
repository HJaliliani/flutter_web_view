/*
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget{

  final url = 'https://www.google.com' ;
  final key = UniqueKey();

  @override
  Widget build(BuildContext context  ){
    return WebView(
              key: this.key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: this.url
            );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
*/



/*
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget{

  var url;
  final key = UniqueKey();

  @override
  Widget build(BuildContext context  ){
    this.url = 'https://www.google.com' ;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: WebView(
                key: this.key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: this.url
            ),
          )
        ],
      ),
    );

  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}*/
