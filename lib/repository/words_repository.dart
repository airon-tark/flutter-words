import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import '../config/constants.dart';

class WordsRepository {
  //
  static final WordsRepository _singleton = WordsRepository._internal();

  factory WordsRepository() => _singleton;

  var _cachedWords = <String>[];

  //
  Future<List<String>> get(String query) async {
    if (_cachedWords.isEmpty) {
      var wordsEnglish = await _words(AppFiles.words_english);
      var wordsRussian = await _words(AppFiles.words_russian);
      _cachedWords = [...wordsEnglish, ...wordsRussian];
    }

    return _cachedWords
        .where((w) => w.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
  }

  //
  WordsRepository._internal();

  Future<List<String>> _words(String fileName) async {
    var fileTextEnglish = await rootBundle.loadString(fileName);
    return (json.decode(fileTextEnglish) as Map<String, dynamic>).keys.toList();
  }
}
