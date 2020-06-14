import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget{
  final String arrowDirection;
  final String arrowAxis;
  final VoidCallback _onPressed;
  ArrowIcon(this.arrowAxis, this.arrowDirection, this._onPressed);

  @override
  Widget build(context){
    return new IconButton(
      icon: new Icon(arrowAxis=='vertical'? (arrowDirection=='up'? Icons.arrow_drop_up:Icons.arrow_drop_down):(arrowDirection=='right'? Icons.arrow_right:Icons.arrow_left)),
      iconSize: 70.0,
      color: Colors.black,
      onPressed: _onPressed,
    );
  }
}