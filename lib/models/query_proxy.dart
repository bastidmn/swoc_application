import 'package:flutter/material.dart';
import 'package:swoc_application/models/language.dart';

class QueryProxy {
  String _id;
  Language _lang;
  String _name;
  String _iconCode;
  DateTime _lastAccessed;
  int _goodWordCount;
  int _badWordCount;

  QueryProxy(
    this._id,
    this._lang,
    this._name,
    this._iconCode,
    this._goodWordCount,
    this._badWordCount,
    this._lastAccessed,
  );

  static IconData decodeQueryIcon(String iconCode) {
    switch (iconCode.substring(0, 1)) {
      case 'a':
        return Icons.sticky_note_2;
        break;
      case 'b':
        return Icons.short_text;
        break;
      default:
        return Icons.sticky_note_2;
        break;
    }
  }

  static Color decodeQueryColor(String iconCode) {
    switch (iconCode.substring(1, 2)) {
      case 'a':
        return Colors.redAccent;
        break;
      case 'b':
        return Colors.greenAccent;
        break;
      case 'c':
        return Colors.deepPurpleAccent;
        break;
      default:
        return Colors.tealAccent;
        break;
    }
  }

  get id {
    return _id;
  }

  get lang {
    return _lang;
  }

  get name {
    return _name;
  }

  get iconCode {
    return _iconCode;
  }

  get lastAccessed {
    return _lastAccessed;
  }

  get goodWordCount {
    return _goodWordCount;
  }

  get badWordCount {
    return _badWordCount;
  }
}
