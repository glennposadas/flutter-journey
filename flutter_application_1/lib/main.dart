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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Row(
          //   children: [
          //     const Text('Hello, '),
          //     const Text('World!')
          //   ],
          // ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: EdgeInsets.all(30),
                      color: Colors.red,
                      child: const Text('two')
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.cyan,
                  child: const Text('Expanded'),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.green,
              child: const Text('one')
            ),
          ),
          Container(
              padding: EdgeInsets.all(40),
              color: Colors.black,
              child: const Text('three')
          )
        ],
      ),

      // Padding(
      //   padding: EdgeInsets.all(30),
      //   child: Text('jabsssss!'),
      // ),


      // Container(
      //   padding: EdgeInsets.fromLTRB(16, 44, 15, 8),
      //   margin: EdgeInsets.all(30),
      //   color: Colors.lightGreen,
      //   child: Text('Container!!! ',
      // ),


      // Center(
      //   child: IconButton(
      //     onPressed: () { },
      //     icon: Icon(Icons.email),
      //     color: Colors.amber
      //   )

        // ElevatedButton.icon(
        //     onPressed: () {
        //
        // },
        //     icon: Icon(Icons.airport_shuttle),
        //     label: Text('Labels')
        // )
        // MaterialButton(
        //   onPressed: () {
        //
        //   },
        //   child: Text('With Icon!'),
        //   color: Colors.yellow
        // )
        // MaterialButton(
        //   onPressed: (){
        //     print("clicked!~~");
        //   },
        //   child: Text('Click me, please!1'),
        //   color: Colors.lightBlue,
        // )

        // Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.red,
        //   size: 100,
        // )
        // InteractiveViewer(
        //   panEnabled: false,
        //   boundaryMargin: EdgeInsets.all(100),
        //   minScale: 1.0,
        //   maxScale: 2,
        //   child: Image.asset('assets/van2.jpg')
        // ),
        // Text(
        //   'Hey, world!',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey[600],
        //     fontFamily: 'IndieFlower',
        //   ),
        // ),
      // ),
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
