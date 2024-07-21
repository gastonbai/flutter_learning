import "dart:async";

import "package:flutter/material.dart";

void main() {
  runApp(first());
}

class first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _firstState();
  }
}

class _firstState extends State<first> {
  //нижнее подчеркивание - приватность

   bool _loading= false;
   double _progressValue = 0.0;

  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

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
            child: _loading?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                  value: _progressValue,
                ),
                Text(
                  '${(_progressValue * 100).round()}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

              ],
            )
                : Text(
              'Press button to download',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });

          },
          child: Icon(Icons.access_alarm_outlined),
        ),
      ),
    );
  }
  void _updateProgress() {
    const sec = const Duration(seconds: 1);
    Timer.periodic(sec, (Timer t) {
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(1) == '1.0'){
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
