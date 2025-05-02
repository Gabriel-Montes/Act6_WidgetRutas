import 'dart:async';

import 'package:flutter/material.dart';

//! AnimatedModalBarrier

class P3 extends StatefulWidget {
  const P3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _P3State();
}

class _P3State extends State<P3> with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.pink.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.2),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7565d0),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Pantalla 3"),
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
                width: 250.0,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Presiona'),
                      onPressed: () {
                        setState(() {
                          _isPressed = true;
                        });
                        _animationController.reset();
                        _animationController.forward();
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            _isPressed = false;
                          });
                        });
                      },
                    ),
                    if (_isPressed) _animatedModalBarrier,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
