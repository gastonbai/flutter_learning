import "package:flutter/material.dart";

void main() {
  runApp(first());
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('MyFirstApp'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                  value: 23,
                ),
                Text(
                  '23%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Press button to download',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.access_alarm_outlined),
      ),
      ),
    );
  }
}
