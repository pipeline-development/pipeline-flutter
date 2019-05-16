import 'package:flutter/material.dart';

class AppletScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ''
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black38,
            size: 30,
          ),
          onPressed: () { Navigator.pop(context); },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            AppletIcon(
              appletName: 'IdeaHub',
              route: '/idea/hub',
              icon: Icons.domain
            ),
            AppletIcon(
              appletName: 'InvestorHub',
              route: '/investor/hub',
              icon: Icons.monetization_on,
            ),
            AppletIcon(
              appletName: 'TechnicianHub',
              route: '/technician/hub',
              icon: Icons.school,
            ),
            AppletIcon(
              appletName: 'Settings',
              route: 'settings',
              icon: Icons.settings,
            )
          ],
        ),
      ),
    );
  }
}

class AppletIcon extends StatelessWidget {

  final String appletName;
  final String route;
  final IconData icon;

  AppletIcon({Key key, this.appletName, this.route, this.icon}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, route);
      },
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              this.icon,
              size: 50,
            ),
            Text(
              this.appletName,
              style: TextStyle(
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}