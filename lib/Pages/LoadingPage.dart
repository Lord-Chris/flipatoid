import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget{

  @override
  Widget build(context){
    return new Material(
      color: Colors.yellowAccent,
      child: new InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, '/flip'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Let\'s flip it!',
              style: TextStyle(fontSize: 50.0,color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Text(
              'Tap to continue...',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}