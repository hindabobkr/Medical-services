import 'package:flutter/material.dart';
import 'package:flutter_app_mammo/components/Header.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: ListView(
              children: [
                Text("dsds"),
                Text("dsds"),
                Text("dsds"),
                Text("dsds"),
                Text("dsds"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
