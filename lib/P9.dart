//! AnimatedSize

import 'package:flutter/material.dart';

class P9 extends StatefulWidget {
  const P9({Key? key}) : super(key: key);

  @override
  State<P9> createState() => _P9State();
}

class _P9State extends State<P9> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7565d0),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Pantalla 9"),
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
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
