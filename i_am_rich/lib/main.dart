import 'package:flutter/material.dart';

/*main method is the starting point as like in JAVA.
almost everything in flutter is widget and there is widget for 
almost everything that you want to do in flutter*/
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("I am rich"),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('lib/images/diamond.png'),
            ),
          ),
        ),
      ),
    );
