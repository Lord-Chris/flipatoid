import 'package:flutter/material.dart';

import '../Pages/FlipPage.dart';

import '../UI/ImageLoaded.dart';

import '../Utils/GettingImage.dart';

class ImageLoadingOverLay extends StatefulWidget {
  final String url;
  ImageLoadingOverLay(this.url);
  @override
  _ImageLoadingOverLayState createState() => _ImageLoadingOverLayState(url);
}

class _ImageLoadingOverLayState extends State<ImageLoadingOverLay> with SingleTickerProviderStateMixin{
  String imageURL;
  _ImageLoadingOverLayState(this.imageURL);
 Widget picture;
 bool _isLoading = true;
 bool _hasLoaded;
 void loading() async{
   GettingImage instance = GettingImage(imageURL);
   await instance.getImage();
   await instance.networkImage();
   _hasLoaded = instance.hasGottenImage;
   setState(() {
     _isLoading = false;
     picture = instance.imageGotten;
   });
 }


 Animation _animation;
 AnimationController _animationController;

 @override
  void initState() {
    super.initState();
    loading();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(begin: 5.0, end: 50.0).animate(_animationController);
    _animationController.forward();
    _animationController.addListener((){
      setState(() {
        _animation.value;
      });
    });
    _animationController.addStatusListener((status){
      if(status==AnimationStatus.completed){
        _animationController.reverse();
      }
      else if(status==AnimationStatus.dismissed){
        _animationController.forward();
      }
    });
  }
  @override
  void dispose() {
   _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black87,
      child: new Center(
        child: _isLoading==true ? new Center(child: Text('Loading...',style: TextStyle(color: Colors.white, fontSize: _animation.value),),) : _hasLoaded==true ? new ImageLoaded((){
          Navigator.pushNamedAndRemoveUntil(context, '/flip', (Route<dynamic> route)=>false,arguments: {
            'image': picture,
          });
        }): new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Couldn\'t get image',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 30.0,
              ),),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
            ),
            FlatButton(
            color: Colors.yellowAccent,
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
            child: Text('Retry',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/search');
            },
          ),
          ],
        ),
      ),
    );
  }
}
