import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
          'Home'
      ),
      centerTitle: true,
      backgroundColor: Colors.green[600],
    ),
    body: const Center(
      child: Text(
          'boom',
        style: TextStyle(

        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('Clicked!');
      },
      backgroundColor: Colors.red[600],
      child: const Text(
          'Click'
      ),
    ),
  ),
));