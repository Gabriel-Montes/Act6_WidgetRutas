//! AnimatedRotation

import 'package:flutter/material.dart';

class P8 extends StatefulWidget {
  const P8({Key? key}) : super(key: key);

  @override
  State<P8> createState() => P8State();
}

class P8State extends State<P8> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7565d0),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Pantalla 8"),
        backgroundColor: Color(0xff5600b9),
        titleTextStyle: TextStyle(
          color: Color(0xffffffff),
          fontSize: 22,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Cambia el color aquí
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 150,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotar Logo'),
              style: ElevatedButton.styleFrom(
                  //primary: Colors.orangeAccent,
                  ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
