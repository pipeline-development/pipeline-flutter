import 'dart:core';

class Profile {
  String profileID;
  String name;
  String profession;
  String avatarUri;

  Profile(this.profileID, this.name, this.profession, this.avatarUri);

  static Profile fromJSON(Map<String, dynamic> json) {
    if (json == null) {
      throw FormatException("Null JSON provided to Idea object");
    }

    return Profile( // TODO : fix this for the database values
        json['uid'],
        json['name'],
        json['profession'],
        json['avatarUri']
    );
  }
}