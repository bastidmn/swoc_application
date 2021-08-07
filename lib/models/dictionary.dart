import 'package:swoc_application/models/vocabulary.dart';

import 'language.dart';

class Dictionary {
  String _id;
  Language _lang;
  String _name;
  String _imagePath;
  List<Vocabulary> _vocabs;

  get id {
    return _id;
  }

  get lang {
    return _lang;
  }

  get name {
    return _name;
  }

  get imagePath {
    return _imagePath;
  }

  get vocabs {
    return _vocabs;
  }
}
