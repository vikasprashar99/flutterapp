import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top of the week",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(fontSize: 23.0, color: Colors.pinkAccent),
              )
            ],
          ),
     
        ),
       
        Container(
            height: 292.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 242.0,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  );
                })
                ),
                SizedBox(height:6.0),
                
      ],
    );
  }
}
