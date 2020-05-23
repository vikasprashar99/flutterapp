import 'package:dribbleui/cards.dart';
import 'package:dribbleui/playlistcards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(HomeScreen());
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
    int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Listen to Your",
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Times New Roman'
                      ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Favourite Podcast",
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Impact'))
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Discover more than 100+ Best Talks Ever",
                style: TextStyle(
                    fontSize: 22.0,
                                          fontFamily: 'Times New Roman',
                    fontStyle: FontStyle.normal,
                    color: Colors.grey),
                    
              )
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Search For Podcast"),
                          ]),
                    ),
                  ),
                ),
                Container(
                    width: 60.0,
                    height: 68.0,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: (Icon(Icons.search)))
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Cards(),
          Playlist(),
        ],
      ),
    ),
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40.0,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mic,
              size: 40.0,
            ),
            title: Text("Library"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 40.0,
            ),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }
}
