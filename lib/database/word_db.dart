import 'package:swoc_application/models/word.dart';

class WordDB {
  WordDB._();
  static final WordDB wordDB = WordDB._();

  Word getWord(String id) {
    return null;
  }

  void addWord(Word word) {}

  void addWords(List<Word> words) {
    for (Word word in words) {
      addWord(word);
    }
  }
}

