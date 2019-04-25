import 'package:flutter/material.dart';
import 'placeholder_widget.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyPlaceholderWidget('https://gadgetnews.net'),
    MyPlaceholderWidget('https://digiato.com'),
    MyPlaceholderWidget('https://www.zoomit.ir')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('اخبار تکنولوژی'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName:  Text('Technology News'),
              accountEmail:  Text('Jaliliani.Hamed@Gmail.com'),
              currentAccountPicture:  CircleAvatar(
                backgroundImage:  NetworkImage('https://i.ibb.co/0FGqpFy/technews.jpg'), // https://ibb.co/0FGqpFy
              ),
            ),
          ],
        ),
      ),
      body : _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped  ,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          new  BottomNavigationBarItem(
            icon:   Icon(Icons.phonelink_ring),
            title:   Text('GadgetNews'),
          ),
          new  BottomNavigationBarItem(
            icon:   Icon(Icons.language),
            title:   Text('Digiato'),
          ),
          new  BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook),
              title: Text('ZoomIt')
          )
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


