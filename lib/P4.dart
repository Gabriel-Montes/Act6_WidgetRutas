import 'package:flutter/material.dart';

//! AnimatedOpacity

class P4 extends StatefulWidget {
  const P4({Key? key}) : super(key: key);

  @override
  State<P4> createState() => P4State();
}

class P4State extends State<P4> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7565d0),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Pantalla 4"),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Desaparecer Logo'),
              onPressed: () {
                setState(
                  () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
