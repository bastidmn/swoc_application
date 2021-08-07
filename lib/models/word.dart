import 'dart:convert';

import 'package:swoc_application/models/language.dart';
import 'package:uuid/uuid.dart';

class Word {
  String id;
  Language lang;
  String foreign;
  String german;

  //Create new Word
  Word.newWord(Language lang, String foreign, String german) {
    id = new Uuid().v4().toString();
    this.lang = lang;
    this.foreign = foreign;
    this.german = german;
  }

  Word({this.id, this.lang, this.foreign, this.german});

  Word wordFromJson(String string) {
    final jsonData = json.decode(string);
    return Word.fromMap(jsonData);
  }

  String wordToJson(Word word) {
    final dyn = word.toMap();
    return json.encode(dyn);
  }

  factory Word.fromMap(Map<String, dynamic> json) => new Word(
        id: json["id"],
        lang: json["lang"],
        foreign: json["foreign"],
        german: json["german"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "lang": lang,
        "foreign": foreign,
        "german": german,
      };
}
