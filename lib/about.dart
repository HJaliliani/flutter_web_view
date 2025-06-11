import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() =>  _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About APP')  , // Added const
        centerTitle: true,
      ),
      // Text("This app developed by Flutter ."
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton( // Replaced FlatButton with TextButton
              onPressed: () => _launchURL(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.all(10.0), // Added const
                primary: Colors.white, // Explicitly set text/icon color
              ),
              child: Column(
                children: const <Widget>[ // Added const
                  Text("Open Github repo"),
                  Icon(Icons.language)
                ],
              ),
            ),
            const Text("\n Developed by Flutter"), // Added const
        ],
        ),
      ),
    );
  }

  _launchURL() async {
    final Uri url = Uri.parse('https://github.com/HJaliliani/flutter_web_view'); // Changed to Uri.parse
    if (await canLaunchUrl(url)) { // Changed to canLaunchUrl
      await launchUrl(url); // Changed to launchUrl
    } else {
      throw 'Could not launch $url';
    }
  }
}