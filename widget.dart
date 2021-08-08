import'package:flutter/material.dart';
class MyExplorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/blood sample.png');
    var image = new Image(image:assetsImage,width: 30.0,height: 30.0,);
    return Container(child: image);
  }
}

