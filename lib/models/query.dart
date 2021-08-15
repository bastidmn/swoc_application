import 'package:flutter/material.dart';
import 'package:swoc_application/models/language.dart';

class Query {
  String _id;
  //Language _lang;
  String _name;
  //String _iconCode;
  //DateTime _lastAccessed;
  List<String> _goodIds;
  List<String> _badIds;

  get id {
    return _id;
  }

  // get lang {
  //   return _lang;
  // }

  get name {
    return _name;
  }

  // get iconColor {
  //   return _iconColor;
  // }
  //
  // get lastAccessed {
  //   return _lastAccessed;
  // }

  get goodIds {
    return _goodIds;
  }

  get badIds {
    return _badIds;
  }
}
