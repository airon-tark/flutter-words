import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter_words/config/constants.dart';

class WordSelector extends StatelessWidget {
  //
  final WordSuggestionsCallback suggestionsCallback;
  final ValueChanged<String> onWordSelected;
  final TextEditingController textController;
  final String hint;
  final bool error;

  const WordSelector({
    Key key,
    @required this.suggestionsCallback,
    this.error = false,
    this.hint,
    this.textController,
    this.onWordSelected,
  })  : assert(suggestionsCallback != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: error ? Colors.red : Colors.black,
          ),
        ),
      ),
      child: TypeAheadField<String>(
        suggestionsBoxDecoration: SuggestionsBoxDecoration(
          constraints: BoxConstraints(
            maxHeight: 250.0,
          ),
        ),
        textFieldConfiguration: TextFieldConfiguration(
          controller: textController,
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint ?? 'Search the word',
            hintStyle: TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.w300,
            ),
          ),
          style: TextStyle(
            fontSize: AppSize.fontBig,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        noItemsFoundBuilder: (context) => null,
        suggestionsCallback: suggestionsCallback,
        itemBuilder: (context, word) {
          return Container(
            height: 50.0,
            padding: AppPadding.leftNormal,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  word,
                  style: TextStyle(
                    fontSize: AppSize.fontMedium,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          );
        },
        onSuggestionSelected: onWordSelected,
      ),
    );
  }
}

typedef WordSuggestionsCallback = FutureOr<List<String>> Function(
  String query,
);
