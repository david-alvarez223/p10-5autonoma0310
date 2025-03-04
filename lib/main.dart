import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alvarez Lujan 0310'),
        ),
        body: Center(
          child: ContainerColumn(),
        ),
      ),
    );
  }
}

class ContainerColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // To center the Column vertically
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text('color property'),
          ),
          height: 100,
          width: 250,
        ),
        SizedBox(height: 10), // Optional: Add spacing between containers
        Container(
          color: Color(0xffecafc3),
          child: Center(
            child: Text('hex color mode'),
          ),
          height: 100,
          width: 250,
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.grey,
          child: Center(
            child: Text(
              'color with opacity',
            ),
          ),
          height: 100,
          width: 250,
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.yellow,
          child: Center(
            child: Text('decoration property'),
          ),
          height: 100,
          width: 250,
        ),
        SizedBox(height: 10),
        Container(
          child: Center(
            child: Text('gradient color'),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.cyanAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 100,
          width: 250,
        ),
      ],
    );
  }
}
