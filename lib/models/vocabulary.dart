import 'word.dart';

class Vocabulary {
  String _id;
  List<Word> _words;

  Vocabulary.newVoc(List<Word> words) {
    this._words = words;
  }

  Vocabulary.fromDB(this._id, this._words);

  get id {
    return _id;
  }

  get words {
    return _words;
  }
}
