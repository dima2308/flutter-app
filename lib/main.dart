import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = 50;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tap '-' to decrement",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      splashColor: Colors.black,
                      onPressed: decr),
                  Text(
                    "${(_counter)}",
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: inc,
                  ),
                ],
              ),
              Text(
                "Tap '+' to decrement",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void inc() {
    setState(() {
      _counter++;
    });
  }

  void decr() {
    setState(() {
      _counter--;
    });
  }
}
