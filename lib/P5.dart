import 'package:flutter/material.dart';

//!AnimatedPadding

class P5 extends StatefulWidget {
  const P5({Key? key}) : super(key: key);

  @override
  State<P5> createState() => _P5State();
}

class _P5State extends State<P5> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7565d0),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Pantalla 5"),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                //primary: Colors.orangeAccent,
                ),
            child: const Text('Cambiar Tamaño de Borde'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text(
            'Padding = $padValue',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Color(0xffa80000),
            ),
          ),
        ],
      ),
    );
  }
}
