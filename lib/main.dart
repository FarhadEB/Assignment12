import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Libraries.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> library = [
    http(),
    provider(),
    shared_preferences(),
    dio(),
    flutter_bloc(),
    cachednetworkimage(),
    flutterlocalnotifications()
  ];
  List names = [
    'HTTP',
    'Provider',
    'Shared_Preferences',
    'Dio',
    'Flutter_bloc',
    'Cached network image',
    'Flutter local notifications'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
            child: Text(
          'Popular Flutter Libraries',
          style: TextStyle(color: Colors.white, fontSize: 40),
        )),
      ),
      body: ListView.builder(
        itemCount: library.length,
        itemBuilder: (c, i) {
          return ListTile(
            tileColor: Color.fromARGB(
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => library[i]));
            },
            splashColor: Colors.yellow,
            title: Text("${i + 1} ${names[i]}"),
          );
        },
      ),
    );
  }
}
