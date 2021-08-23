import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:swoc_application/models/language.dart';
import 'package:uuid/uuid.dart';

class Query {
  // CREATE TABLE Queries (
  // id TEXT PRIMARY KEY,
  //     name TEXT,
  // lastAccessed TEXT,
  //     lang TEXT,
  // iconId INTEGER,
  //     goodCount INTEGER,
  // badCount INTEGER,
  //     goodIds TEXT,
  // badIds TEXT,
  // );
  String id;
  String name;
  DateTime lastAccessed;
  Language lang;
  int iconId;
  int goodCount;
  int badCount;
  List<String> goodIds;
  List<String> badIds;

  Query(
      {this.id,
      this.name,
      this.lastAccessed,
      this.lang,
      this.iconId,
      this.goodCount,
      this.badCount,
      this.goodIds,
      this.badIds});

  Query.newQuery(String name, DateTime lastAccessed, Language lang, int iconId,
      List<String> goodIds, List<String> badIds) {
    this.id = new Uuid().v4().toString();
    this.name = name;
    this.lang = lang;
    this.lastAccessed = lastAccessed;
    this.goodCount = goodIds.length;
    this.badCount = badIds.length;
    this.goodIds = goodIds;
    this.badIds = badIds;
  }

  static Query queryFromJson(String string) {
    final jsonData = json.decode(string);
    return Query.fromMap(jsonData);
  }

  static Query fromMap(Map<String, dynamic> json) => new Query(
        id: json['id'],
        name: json['name'],
        lang: LanguageHelper.getLanguage(json['lang']),
        lastAccessed: DateTime.parse(json['lastAccessed']),
        goodCount: int.parse(json['goodCount']),
        badCount: int.parse(json['badCount']),
        goodIds: jsonDecode(json['goodIds']),
        badIds: jsonDecode(json['badIds']),
      );

  static String queryToJson(Query query) {
    final dyn = query.toMap();
    return json.encode(dyn);
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'lang': LanguageHelper.getString(lang),
        'lastAccessed': lastAccessed.toIso8601String(),
        'goodCount': goodCount.toString(),
        'badCount': badCount.toString(),
        'goodIds': jsonEncode(goodIds),
        'badIds': jsonEncode(badIds),
      };
}
