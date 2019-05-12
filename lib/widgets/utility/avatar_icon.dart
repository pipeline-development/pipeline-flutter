import "package:flutter/material.dart";

class AvatarIcon extends StatelessWidget {
  final String avatarUri;
  final num height;
  final num width;

  AvatarIcon({Key key, this.avatarUri, this.height, this.width}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                this.avatarUri
            )
          )
        ),
      ),
    );
  }
}