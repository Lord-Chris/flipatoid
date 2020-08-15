import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../UI/arrow_icon.dart';

class FlipPage extends StatefulWidget {
  @override
  State createState() => FlipPageState();
}

class FlipPageState extends State<FlipPage> {
  Image _shownImage = Image.asset('assets/Stuff.png');

  double x = 0;
  double a = 0;

  double y = 0;
  double b = 0;

  double z = 0;
  double c = 0;

  @override
  Widget build(context) {
    dynamic _shownImage1 = ModalRoute.of(context).settings.arguments ?? _shownImage;
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: new Text(
          'Flip me!!',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
              fontSize: 30.0,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ArrowIcon('vertical', 'up', () async {
              double i = a - 3.142;
              while (a >= i) {
                await Future.delayed(Duration(
                  microseconds: 1,
                ));
                setState(() => x = a);
                // print(a);
                a -= 0.01;
              }
              a = x;
            }),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new ArrowIcon('horizontal', 'left', () async {
                  // print(y);
                  double j = b + 3.142;
                  while (b <= j) {
                    await Future.delayed(Duration(
                      microseconds: 0.1.truncate(),
                    ));
                    setState(() => y = b);
                    // print(b);
                    b += 0.01;
                  }
                  b = y;
                }),
                Flexible(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4(
                        1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0.002, 0, 0, 0, 1)
                      ..rotateX(x)
                      ..rotateY(y)
                      ..rotateZ(z),
                    child: Container(
                      color: Colors.white,
                      child: _shownImage1 
                      // == null
                      //     ? _shownImage
                      //     : _shownImage1
                          ,
                    ),
                  ),
                ),
                new ArrowIcon('horizontal', 'right', () async {
                 double j = b - 3.142;
                  while (b >= j) {
                    await Future.delayed(Duration(
                      microseconds: 1,
                    ));
                    setState(() => y = b);
                    // print(b);
                    b -= 0.01;
                  }
                  b = y;
                }),
              ],
            ),
            new ArrowIcon('vertical', 'down', () async {
              double i = a + 3.142;
              while (a <= i) {
                await Future.delayed(Duration(
                  microseconds: 1,
                ));
                setState(() => x = a);
                // print(a);
                a += 0.01;
              }
              a = x;
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellowAccent,
        onPressed: () {
          Navigator.pushNamed(context, '/search');
        },
      ),
    );
  }
}
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

// Scaffold(
//       body: Center(
//         child: Transform(
//           transform: Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
//             ..rotateX(x)
//             ..rotateY(_animation.value)
//             ..rotateZ(z)
//           // ..setEntry(3, 2, 0.002)
//           ,
//           alignment: FractionalOffset.center,
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 // print(details.delta.dx/100);
//                 y = 3.2;
//                 // x = x + details.delta.dy / 100;
//               });
//             },
//             child: Container(
//               color: Colors.red,
//               height: 200,
//               width: 200.0,
//               child: Center(
//                 child: Text("UFCVBJ"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     )
