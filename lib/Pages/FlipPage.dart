import 'package:flutter/material.dart';
import 'dart:math';

import '../UI/arrow_icon.dart';

class FlipPage extends StatefulWidget{
  @override
  State createState() => FlipPageState();
}
class FlipPageState extends State<FlipPage>{
  Image _shownImage = Image.asset('assets/Stuff.png');
  Matrix4 transform = Matrix4.rotationY(0);
  @override
  Widget build(context){
    Map _shownImage1 = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: new Text(
          'Flip me!!',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellowAccent,fontSize: 30.0,fontStyle: FontStyle.italic),
        ),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ArrowIcon('vertical', 'up', (){setState(()=> transform=Matrix4.rotationX(pi));}),
            /*new IconButton(
              icon: Icon(Icons.arrow_drop_up),
              iconSize: 72.0,
              onPressed: (){
                setState(() {
                });
              },
            ),
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(math.pi),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFFE8581C),
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),*/
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new ArrowIcon('horizontal', 'left', (){setState(()=> transform=Matrix4.rotationY(pi));}),
                Flexible(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: transform,
                    child: Container(
                      color: Colors.white,
                      child:  _shownImage1==null ? _shownImage : _shownImage1['image'],
                    ),
                  ),
                ),
                new ArrowIcon('horizontal', 'right',(){setState(()=> transform=Matrix4.rotationY(pi));}),
              ],
            ),
            new ArrowIcon('vertical', 'down',(){setState(()=> transform=Matrix4.rotationX(-pi));}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellowAccent,
        onPressed: (){
          Navigator.pushNamed(context, '/search');
        },
      ),
    );
  }
}