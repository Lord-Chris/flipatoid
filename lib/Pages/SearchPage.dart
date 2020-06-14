import 'package:flutter/material.dart';

import '../UI/InstructionsOverLay.dart';
import '../UI/ImageLoadingOverLay.dart';



class SearchPage extends StatefulWidget{
  @override
  State createState() => SearchPageState();
}
class SearchPageState extends State<SearchPage>{
  TextEditingController url = TextEditingController();
  bool _instructionsOverLayBeVisible = true;
  bool _imageLoadingOverLayBeVisible = false;
  @override
  Widget build(BuildContext context){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Scaffold(
          backgroundColor: Colors.yellowAccent,
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: TextField(
                  controller: url,
                  style: TextStyle(fontSize: 20.0,),
                  decoration: InputDecoration(
                    labelText: 'Input image URL...',
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      _imageLoadingOverLayBeVisible=true;
                      //url.clear();
                    });
                  },
                  child: Text('Get Image', style: TextStyle(color: Colors.yellowAccent,fontSize: 20.0),),
                ),
              ),
            ],
          ),
        ),
        _instructionsOverLayBeVisible==true ? new InstructionsOverLay(
           (){
             this.setState(()=>_instructionsOverLayBeVisible=false);
           }
       ) : new Container(),
        _imageLoadingOverLayBeVisible==true ? new ImageLoadingOverLay(url.text):new Container(),
      ],
    );
  }
}