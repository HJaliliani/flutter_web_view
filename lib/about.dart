import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() =>  _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About APP')  ,
        centerTitle: true,
      ),
      // Text("This app developed by Flutter ."
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => _launchURL(),
              color: Colors.green,
              padding: EdgeInsets.all(10.0),
              child: Column( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text("Open Github repo"),
                  Icon(Icons.language)
                ],
              ),
            ),
            Text("\n Developed by Flutter"),
        ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://github.com/HJaliliani/flutter_web_view';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}