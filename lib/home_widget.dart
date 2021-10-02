import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import './about.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyPlaceholderWidget('https://www.youtube.com/feed/trending?bp=6gQJRkVleHBsb3Jl'),
    MyPlaceholderWidget('https://storiesdown.com/users/bbcnews'),
    MyPlaceholderWidget('https://www.tiktok.com/foryou?is_copy_url=1&is_from_webapp=v1'),
    MyPlaceholderWidget('https://www.reddit.com/r/trendingposts/')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Trendy App'),

        /* actions: <Widget>[
          new Container(width: 60.0, height: 20.0, color: Colors.blue,
             child:  CircularProgressIndicator( backgroundColor: Colors.white),)]*/

      ),
      drawer:   Drawer(
        child: ListView(
          children: <Widget>[
              UserAccountsDrawerHeader(
              accountName:  Text('Trendy App'),
              accountEmail:  Text('Trendy@Gmail.com'),

              currentAccountPicture:  CircleAvatar(
                // Show Text inside circle
                backgroundColor: Colors.brown.shade800,
                child: Text('Trendy'),

               //Load image from Network
                //it might causes a glitch display render in ios, reason : to load from internet
               // backgroundImage: NetworkImage('https://i.ibb.co/0FGqpFy/technews.jpg'), // https://ibb.co/0FGqpFy

              ),

             ),
              ListTile(
              title:   Text('About us'),
              trailing: Icon(Icons.accessibility),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>   AboutPage()));
              },
            ),
          ],
        ),
      ),
      body : _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped  ,
        type: BottomNavigationBarType.fixed , // to Fix add more than 3 bottom without change background to white
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
             BottomNavigationBarItem(
            icon:   Icon(Icons.phonelink_ring),
            title:   Text('YouTube'),
          ),
             BottomNavigationBarItem(
            icon:   Icon(Icons.language),
            title:   Text('Instagram'),
          ),
             BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook),
              title: Text('TikTok')
          ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.important_devices),
                 title: Text('Reddit')
             ),
        ],


      ),

    );
  }
  //This method handles Tap on BottomNavigationItems & set the current index to our variable
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


