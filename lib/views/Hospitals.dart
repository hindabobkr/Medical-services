import 'package:flutter/material.dart';

import 'MapView.dart';

class Hospitals extends StatefulWidget {
  @override
  _HospitalsState createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {

  var HN =[
    "Al Faisal Specialized Hospital",
    "Alzaytouna Specialist Hospital",
    "Royal Scan",
    "Fedail Hospital Laboratory"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: HN.length,
          itemBuilder: (context,i){
        return InkWell(
          child: Card(child: Container(
            height: 150.0,
            child:Center(child:  Text(HN[i]),),)),
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MyThirdPage();
                }
              )
            );
          },
        );
      }),
    );
  }
}

