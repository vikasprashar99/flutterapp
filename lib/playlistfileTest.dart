import 'package:flutter/material.dart';

class PlaylistScreenTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: Text("Playlist")),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'Next page',
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 135.0,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text("yo")
                            ),
                            SizedBox(width: 20.0,),
                        Text("Bhasoodi")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 52.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "All Episode",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 22.0, color: Colors.pinkAccent),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                
                SizedBox(
                  height: 22.0,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          SizedBox(width:12.0),
                          Text("YTO")
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
