import 'package:flutter/material.dart';
import 'package:pipeline/widgets/idea_card/idea_card.dart';
import 'package:pipeline/models/idea.dart';
import 'dart:math';
import 'package:pipeline/temp.dart';

class IdeaHubHome extends StatelessWidget {

  IdeaHubHome({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.dashboard,
              color: Colors.black38,
            ),
            onPressed: () { Navigator.pushNamed(context, '/applets'); },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black38,
            ),
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Dismissible(
          key: Key(new Random().toString()),
          crossAxisEndOffset: -0.15,
          onDismissed: ,
          child: IdeaCard(idea: ideas[1]),

        ),
      ),
    );
  }
}