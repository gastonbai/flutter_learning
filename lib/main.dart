import "dart:async";

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlaywriteHRLijeva'), //Весь виджет
        home: Scaffold(
          appBar: AppBar(
            title: Text('Adding asset'),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(image: AssetImage('assets/images/12313123.jpg')),
                Image.asset('assets/icons/Brjy.png'),
                Positioned(
                    top: 16,
                    left: 115,
                    child: Text(
                      'my castom font',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        // fontFamily: 'PlaywriteHRLijeva', //только конкретный текст
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
