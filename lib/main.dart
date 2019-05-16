import 'package:flutter/material.dart';
import 'package:pipeline/screens/idea_hub_home.dart';
import 'package:pipeline/screens/applet_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipeline',
      routes: {
        '/' : (context) => IdeaHubHome(title: 'Pipeline'),
        '/applets' : (context) => AppletScreen(),
      },
      initialRoute: '/',
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
        ),
      ),
    );
  }
}