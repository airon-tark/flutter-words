import 'word_selector.dart';

abstract class MainView {
  setSuggestionsCallback(WordSuggestionsCallback callback);
}

abstract class MainPresenter {
  onWordSelected(String word);
}
