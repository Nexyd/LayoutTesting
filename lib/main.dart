import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(new LayoutTesting());

class LayoutTesting extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            title: 'Flutter Demo',
            theme: new ThemeData(primarySwatch: Colors.blue),
            home: new TopLakesPage()
        );
    }
}