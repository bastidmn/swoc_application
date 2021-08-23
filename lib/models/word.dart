import 'dart:convert';

import 'package:swoc_application/models/language.dart';
import 'package:uuid/uuid.dart';

class Word {
  String id;
  Language lang;
  String alien;
  String german;

  //Create new Word
  Word.newWord(Language lang, String alien, String german) {
    id = new Uuid().v4().toString();
    this.lang = lang;
    this.alien = alien;
    this.german = german;
  }

  Word({this.id, this.lang, this.alien, this.german});

  Word wordFromJson(String string) {
    final jsonData = json.decode(string);
    return Word.fromMap(jsonData);
  }

  String wordToJson(Word word) {
    final dyn = word.toMap();
    return json.encode(dyn);
  }

  factory Word.fromMap(Map<String, dynamic> json) => new Word(
        id: json['id'],
        lang: LanguageHelper.getLanguage(json['lang']),
        alien: json['alien'],
        german: json['german'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'lang': LanguageHelper.getString(lang),
        'alien': alien,
        'german': german,
      };
}
