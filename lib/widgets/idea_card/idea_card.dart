import 'package:flutter/material.dart';
import 'package:pipeline/models/idea.dart';
import 'package:pipeline/models/profile.dart';
import 'package:pipeline/widgets/utility/avatar_icon.dart';


class IdeaCard extends StatelessWidget {

  final Idea idea;

  IdeaCard ({Key key, this.idea}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      children: <Widget>[
        LogoSpan(
            imageUri: 'https://scorecast.github.io/static/img/1024square.png'
        ),
        SizedBox(height: 8.0),
        ProfileSpan(
          profile: Profile("1", "Justin Ziegler", "Software Engineer", "https://media.licdn.com/dms/image/C4E03AQGARI0YDYegKQ/profile-displayphoto-shrink_200_200/0?e=1563408000&v=beta&t=I8j_joDraFmrA3R2yKXou8xnHXlzbvxvLqNM99FaMOs")
        ),
        SizedBox(height: 5.0),
        IdeaDetails(idea: this.idea),
        SizedBox(height: 10.0)
      ],
    );
  }
}

class LogoSpan extends StatelessWidget {

  final String imageUri;

  LogoSpan ({Key key, this.imageUri}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          height: 80.0
      ),
      child: ClipRRect(
        child: Image.network(
          this.imageUri,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
      )
    );
  }
}

class ProfileSpan extends StatelessWidget {

  final Profile profile;

  ProfileSpan({Key key, this.profile}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(135, 135, 135, 0.6),
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    profile.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    profile.profession,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
            AvatarIcon(avatarUri: profile.avatarUri, height: 50.0, width: 50.0),
            SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}

class IdeaDetails extends StatelessWidget {
  final Idea idea;

  IdeaDetails({Key key, this.idea}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(244, 173, 41, 0.6),
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        idea.ideaName,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        idea.ideaType,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  idea.ideaStage,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
            Divider(height: 20.0),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "\t" + idea.description,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Divider(height: 20.0),
            Text(
              "Requests",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "\t" + idea.requests,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}