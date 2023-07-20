import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            children: [
              Text('Lais Costa ST',
                  style: TextStyle(fontSize: 50, color: Colors.red)),
              Text('29 anos',
                  style: TextStyle(fontSize: 50, color: Colors.red)),
              Icon(
                Icons.assignment_ind,
                color: Colors.red,
                size: 50,
              ),
              Icon(
                Icons.auto_stories,
                color: Colors.red,
                size: 50,
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
