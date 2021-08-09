import 'dart:developer';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:swoc_application/models/language.dart';
import 'package:swoc_application/models/word.dart';

class DataHandler {
  DataHandler._();

  static final DataHandler dataHandler = DataHandler._();

  static Database _database;

  Future<Database> get database async {
    if (_database != null)
      return _database;
    else {
      _database = await initDB();
      return _database;
    }
  }

  initDB() async {
    Directory documents = await getApplicationDocumentsDirectory();
    String path = join(documents.path, "SwocDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Words ("
          "id TEXT PRIMARY KEY,"
          "lang TEXT,"
          "foreign TEXT,"
          "german TEXT"
          ");"
          "CREATE TABLE ");
      log("Word saved");
    });
  }

  addWord(Word word) async {
    var db = await database;
    var res = db.insert("Words", word.toMap());
    return res;
  }

// https://medium.com/flutter-community/using-sqlite-in-flutter-187c1a82e8b#id_token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjQ2Mjk0OTE3NGYxZWVkZjRmOWY5NDM0ODc3YmU0ODNiMzI0MTQwZjUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJuYmYiOjE2MjgzNzU3ODAsImF1ZCI6IjIxNjI5NjAzNTgzNC1rMWs2cWUwNjBzMnRwMmEyamFtNGxqZGNtczAwc3R0Zy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjEwMzgyODIzNzI1ODYwNDAxMzA5NiIsImVtYWlsIjoiYmFzdGkuZG1uMDgwQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhenAiOiIyMTYyOTYwMzU4MzQtazFrNnFlMDYwczJ0cDJhMmphbTRsamRjbXMwMHN0dGcuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJuYW1lIjoiU2ViYXN0aWFuIERvaG1lbiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ2VHaUV4dGxhU3V3X0pDZ0tTY0lLSl9TbkZ3OEVrZWpMQVdoQi1Mdz1zOTYtYyIsImdpdmVuX25hbWUiOiJTZWJhc3RpYW4iLCJmYW1pbHlfbmFtZSI6IkRvaG1lbiIsImlhdCI6MTYyODM3NjA4MCwiZXhwIjoxNjI4Mzc5NjgwLCJqdGkiOiJkZmIzZDY4MTVkNDJjMTNkZDBmMDE4ZDZlY2Y2YmIzOGVkOTRhODMxIn0.eq3Y6K8J8Q_9bgW0lUqU1ut468wzwVYIwkY8VUWA2i19ZA-oiv_rgkYIOXh0PYzYW4FV7UNACPfLK4Donl7ksJXycBVV3E3DVhMVEHFcMRH_AhtnY0GkFXN-6Q17fK5Glr7FkaaKk_ujBIYbvSGyixQQP8EBFptn0XtYTCheaWs_DyBBXrP55y2t7evG8FjnHMMU0nw1PpFNvUGqHJhdAqS89egJ9W3D04N_34bfGU41PkLqKZN1fMGJtHzvNhEbiiG8o00IHAW0NdflgM9dU98-17BSnJcuI3eMz63KhC44DsKIIBfUoxqIUYV9QAbnLi9TRb0K-tCY5RcBRtw3LQ
}
