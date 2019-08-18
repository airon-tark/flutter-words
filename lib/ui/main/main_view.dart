import 'package:flutter/material.dart';
import 'package:flutter_words/config/constants.dart';

import 'main_contract.dart';
import 'main_presenter.dart';
import 'word_selector.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MainScreen> implements MainView {
  //
  MainPresenter _presenter;
  WordSuggestionsCallback _suggestionsCallback;
  var _textEditingController = TextEditingController();
  var _selectedWord = '';

  //
  @override
  void initState() {
    super.initState();
    _presenter = MainPresenterImpl(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: AppPadding.horizontal(60.0),
            child: Padding(
              padding: AppPadding.vertical(120),
              child: WordSelector(
                textController: _textEditingController,
                hint: 'Type word',
                suggestionsCallback: _suggestionsCallback,
                onWordSelected: (word) {
                  _textEditingController.clear();
                  setState(() => _selectedWord = word);
                  _presenter.onWordSelected(word);
                },
              ),
            ),
          ),
          if (_selectedWord.isEmpty)
            Column(
              children: [
                Padding(
                  padding: AppPadding.bottomNormal,
                  child: Icon(
                    Icons.sentiment_neutral,
                    size: 40.0,
                    color: Colors.black12,
                  ),
                ),
                _textGrey('No selected word')
              ],
            ),
          if (_selectedWord.isNotEmpty) _text(_selectedWord)
        ],
      ),
    );
  }

  @override
  setSuggestionsCallback(callback) {
    setState(() => _suggestionsCallback = callback);
  }

  //
  _text(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: AppSize.fontBig,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  _textGrey(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: AppSize.fontMedium,
        color: Colors.black26,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
