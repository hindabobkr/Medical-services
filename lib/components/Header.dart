import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top:35, bottom: 20, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Colors.pinkAccent
      ),
      child: Row(
        children: [
          Text("Home", style: TextStyle( fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),)
        ],
      )
    );
  }
}
