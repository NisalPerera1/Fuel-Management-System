// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Account Type'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text(
              'Select Your Account Type',
              style: TextStyle(fontSize: 25.5),
            ),

            //for spaces
            const SizedBox(
              height: 30,
            ),

            SizedBox(
              width: 200.0,
              height: 75.0,
              child: ElevatedButton(
                // ignore: prefer_const_constructors
                child: Text('I am a Vehicle Owner'),
                onPressed: () {
                  print('OK');
                },
              ),
            ),

//for spaces
            const SizedBox(
              height: 30,
            ),

            SizedBox(
              width: 250.0,
              height: 75.0,
              child: ElevatedButton(
                // ignore: prefer_const_constructors
                child: Text('I am a Filling Station Owner'),
                onPressed: () {
                  print('OK');
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 170, 241, 213),
    );
  }
}
