import 'package:dribbleui/allPlaylists.dart';
import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Latest Playlist",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaylistScreen(
                      // destination: destination,
                    ),
                  ),
                ),
                              child: Text(
                  "View All",
                  style: TextStyle(fontSize: 22.0, color: Colors.pinkAccent),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 130.0,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 130.0,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
