
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Libraries.dart';
// import 'package:chewie/chewie.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false
    ,
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
   AudioPlayer(),
    videoPlayer(),
    fontAwesome(),
    Toast(),
    DateConverter(),
    EnglishWord(),
    DigitToPersianWord()
  ];
  List names = [
    'Audio Player',
    'Video Player',
    'Font Awesome',
    'Toast',
    'Shamsi Date',
    'English Word',
    'Digit To Persian Word'
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
