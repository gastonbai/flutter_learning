import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title, required this.centerTitle})
      : super(key: key);

  final String title;
  bool centerTitle;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: widget.centerTitle,
      ),
      body: Container(
        color: Colors.indigo[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap \"-\" to decrement',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 140.0, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      tooltip: 'Increase 1',
                      onPressed: _incrementCounter,
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      tooltip: 'Increase 1',
                      onPressed: _decrementCounter,
                    ),
                  ],
                ),
              ),
              Text(
                'Tap \"+\" to increment',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
