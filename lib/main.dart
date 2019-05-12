import 'package:flutter/material.dart';
import 'package:pipeline/widgets/idea_card/idea_card.dart';
import 'package:pipeline/models/idea.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.black54,
          )
        )
      ),
      home: MyHomePage(title: 'Pipeline'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: IconButton(icon: Icon(Icons.apps), onPressed: null),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.dashboard), onPressed: null)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: IdeaCard(idea: Idea(
          "ScoreCast",
          "Mobile App",
          "Prototyping",
          null,
          "A mobile application designed to help smaller teams and leagues provide real-time score tracking to their audiences.",
          "In need of a project manager who is capable of managing three developers.",
          "1",
          "https://scorecast.github.io/static/img/1024square.png"
        )),
      ),
    );
  }
}