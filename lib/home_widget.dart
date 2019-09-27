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
    MyPlaceholderWidget('https://digiato.com/'),
    MyPlaceholderWidget('https://gadgetnews.net/'),
    MyPlaceholderWidget('https://www.zoomit.ir/'),
    MyPlaceholderWidget('https://click.ir/')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tech News'),

       //  actions: <Widget>[
        //  new Container(width: 60.0, height: 20.0, color: Colors.white,
         //    child:  CircularProgressIndicator(),)]

      ),
      drawer:   Drawer(
        child: ListView(
          children: <Widget>[
              UserAccountsDrawerHeader(
              accountName:  Text('Tech News'),
              accountEmail:  Text('Tech news'),

              currentAccountPicture:  CircleAvatar(
                // Show Text inside circle
                backgroundColor: Colors.brown.shade800,
                child: Text('News'),

               //Load image from Network
                //it causes a glitch display render in ios, reason : to load from internet
               // backgroundImage: NetworkImage('https://i.ibb.co/0FGqpFy/technews.jpg'), // https://ibb.co/0FGqpFy

              ),

             ),
              ListTile(
              title:   Text('About...'),
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
            title:   Text('DigiAto'),
          ),
             BottomNavigationBarItem(
            icon:   Icon(Icons.language),
            title:   Text('GadgetNews'),
          ),
             BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook),
              title: Text('Zoomit')
          ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.important_devices),
                 title: Text('Click')
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


