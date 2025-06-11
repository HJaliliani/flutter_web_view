import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyPlaceholderWidget extends StatefulWidget {
  final String url;

  const MyPlaceholderWidget(this.url, {super.key});

  @override
  State<MyPlaceholderWidget> createState() => _MyPlaceholderWidgetState();
}

class _MyPlaceholderWidgetState extends State<MyPlaceholderWidget> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      key: widget.key, // Use the key passed from the constructor
      controller: _controller,
    );
  }
}

