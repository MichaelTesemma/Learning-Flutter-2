// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(home: MickeyCard()));
}

class MickeyCard extends StatefulWidget {
  const MickeyCard({Key? key}) : super(key: key);

  @override
  State<MickeyCard> createState() => _MickeyCardState();
}

class _MickeyCardState extends State<MickeyCard> {
  int MickeyLevel = 0;
  add() {
    MickeyLevel += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Mickey's Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            add();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 40.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/a.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 90.0, //The top and bottom padding created by the divider
            color: Colors.grey[800],
          ),
          SizedBox(height: 30.0),
          Text(
            "NAME",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Mickey",
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "CURRENT NINJA LEVEL",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "$MickeyLevel",
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey[400]),
              SizedBox(width: 10.0),
              Text(
                'Mickeytese@gmail.com',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
