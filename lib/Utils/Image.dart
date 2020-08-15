import 'package:flutter/material.dart';
import 'dart:math';


class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {

  AssetImage imageoo = AssetImage('assets/Stuff.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new Center(
        child: Container(
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_drop_up),
                iconSize: 72.0,
                onPressed: (){
                  setState((){
                  });
                },
              ),
              //FlipEffect(imageoo),
              /*new Image(
                image: imageoo,
                fit: BoxFit.fitWidth,
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
