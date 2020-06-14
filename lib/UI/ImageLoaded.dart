import 'package:flutter/material.dart';

class ImageLoaded extends StatelessWidget{
  final VoidCallback _onPressed;
  ImageLoaded(this._onPressed);
  Widget build(context){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Image Gotten!',
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 30.0,
        ),),
        Padding(
          padding: EdgeInsets.only(top: 100.0),
        ),
        RaisedButton(
          color: Colors.yellowAccent,
          padding: EdgeInsets.all(20.0),
          child: Text('Display Image',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          onPressed: _onPressed,
        ),
      ],
    );
  }
}