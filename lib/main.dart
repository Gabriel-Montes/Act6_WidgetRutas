import 'package:flutter/material.dart';
import 'P1.dart';
import 'P10.dart';
import 'P2.dart';
import 'P3.dart';
import 'P4.dart';
import 'P5.dart';
import 'P6.dart';
import 'P7.dart';
import 'P8.dart';
import 'P9.dart';
import 'PP.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PP(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/a': (context) => const P2(),
        '/b': (context) => const P3(),
        '/c': (context) => const P4(),
        '/d': (context) => const P5(),
        '/e': (context) => const P6(),
        '/f': (context) => const P7(),
        '/g': (context) => const P8(),
        '/h': (context) => const P9(),
        '/i': (context) => const P10(),
        '/j': (context) => const P1(),
      },

      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
