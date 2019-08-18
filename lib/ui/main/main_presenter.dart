import 'package:flutter_words/repository/words_repository.dart';

import 'main_contract.dart';

const _minQueryLength = 3;

class MainPresenterImpl implements MainPresenter {
  //
  MainView _view;

  MainPresenterImpl(this._view) {
    _init();
  }

  //
  @override
  onWordSelected(String word) {
    // TODO: perform any business logic
  }

  //
  _init() async {
    _view.setSuggestionsCallback((query) async {
      if (query == null || query.isEmpty || query.length < _minQueryLength) {
        return [];
      }
      return await WordsRepository().get(query);
    });
  }
}
