import 'package:flutter/material.dart';

import '../Pages/SearchPage.dart';

class InstructionsOverLay extends StatefulWidget {
  final VoidCallback _onTap;
  InstructionsOverLay(this._onTap);

  @override
  State createState() => InstructionsOverLayState();
}
class InstructionsOverLayState extends State<InstructionsOverLay>{

  final TextStyle _style = TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'monospace');
  @override
  Widget build(context){
    return new Material(
      color: Colors.black87,
      child: new InkWell(
        onTap: widget._onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('HOW TO GET AN IMAGE URL',style: TextStyle(fontSize: 25.0,color: Colors.white),),
            SizedBox(height: 30.0,),
            new Text('1. Open to where the image is',style: _style,),
            SizedBox(height: 15.0,),
            new Text('2. Click on the image',style: _style,),
            SizedBox(height: 15.0,),
            new Text('3. click on your browser search box and copy the link',style: _style,textAlign: TextAlign.center),
            SizedBox(height: 15.0,),
            new Text('4. Paste the image link in the search box below and click get image',style: _style,textAlign: TextAlign.center),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
            ),
            new Text('Tap to continue..', style: TextStyle(fontSize: 20.0, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}