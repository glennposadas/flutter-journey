import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Home'
        ),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Center(
        child: Text(
          'Hey, world!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'IndieFlower',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked!');
        },
        backgroundColor: Colors.red[600],
        child: const Text(
            'G'
        ),
      ),
    );
  }
}
