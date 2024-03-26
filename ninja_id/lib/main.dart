import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        titleTextStyle: const TextStyle(
          color: Colors.white
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  print("Clicked!");
                  setState(() {
                    ninjaLevel += 1;
                  });
                },
                child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/floki.png'),
                    radius: 50
                ),
              )
            ),
            Divider(
              height: 90,
              color: Colors.grey[400],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Glenn Posadas',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'hello@glennvon.com',
                  style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.grey[300]
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}