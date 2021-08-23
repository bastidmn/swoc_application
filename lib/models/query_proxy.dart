import 'package:flutter/material.dart';
import 'package:swoc_application/models/language.dart';

class QueryProxy {
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
}
