import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var wordPairs = List();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Моё Первое Приложение'),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(WordPair.random().asPascalCase),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Press');

            setState(() {});
          },
        ),
      ),
    );
  }
}
