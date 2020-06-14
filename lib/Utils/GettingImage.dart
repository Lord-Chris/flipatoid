import 'package:http/http.dart';
import 'package:flutter/material.dart';

class GettingImage {
  dynamic imageGotten;
  String url;
  bool hasGottenImage;

  GettingImage(this.url);

  Future networkImage()async{
    imageGotten = Image.network(url);
  }

  Future getImage() async {
    // await networkImage();
    try {
      await get(url);
      return hasGottenImage = true;
    } catch (e) {
      print(e.toString());
      return hasGottenImage = false;
    }
  }
}//https://photos.icons8.com/_nuxt/photos/img/screenshot.f6a3c6f.png

//Response response = await get(url);
//if (response.statusCode == 200) {
//return hasGottenImage = true;
//}
//else {
//hasGottenImage = false;
//throw Exception('Error getting Image, Pleae retry');
//}