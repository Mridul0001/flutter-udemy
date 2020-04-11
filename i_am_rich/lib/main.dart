import 'package:flutter/material.dart';

/*main method is the starting point as like in JAVA.
almost everything in flutter is widget and there is widget for 
almost everything that you want to do in flutter*/
void main() => runApp(
      MaterialApp(
        home: Center( //center widget
          child: Text("Welcome to flutter"),  //text widget
        ),
      ),
    );
