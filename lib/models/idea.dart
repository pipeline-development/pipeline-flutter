import 'dart:core';

class Idea {
  String ideaName;
  String ideaType;
  String ideaStage;
  String customIDType;
  String description;
  String requests;

  String profileID;
  String logoUri;

  Idea(this.ideaName, this.ideaType, this.ideaStage, this.customIDType,
      this.description, this.requests, this.profileID, this.logoUri);

  factory Idea.fromJSON(Map<String, dynamic> json) {
    if (json == null) {
      throw FormatException("Null JSON provided to Idea object");
    }

    return Idea( // TODO : fix these to match the database values
      json['ideaName'],
      json['ideaType'],
      json['ideaStage'],
      json['customIdeaType'],
      json['description'],
      json['requests'],
      json['profileID'],
      json['logoUri']
    );
  }
}

enum IdeaType {
  mobileApp,
  webApplication,
  generalApplication,
  hardwareSolution,
  custom
}

enum IdeaStage {
  prePlanning,
  planning,
  earlyDevelopment,
  lateDevelopment,
  prototyping,
  minimumViablePrototype,
  workingProduct
}