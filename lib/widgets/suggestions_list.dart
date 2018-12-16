import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'
    show WordPair, generateWordPairs;

// State
import 'package:scoped_model/scoped_model.dart' show ScopedModelDescendant;
import 'package:roman_candle/models/typedefs.dart' show AppState;

// Widgets
import 'package:roman_candle/widgets/tappable_favorite.dart'
    show TappableFavorite;

class SuggestionsList extends StatelessWidget {
  final List<WordPair> _suggestions;
  final void Function() _generateSuggestions;

  SuggestionsList(this._suggestions, this._generateSuggestions);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppState>(
        builder: (context, child, model) => ListView.builder(
            padding: const EdgeInsets.all(16.0), // use Theme instead
            itemBuilder: (BuildContext _context, int i) {
              if (i.isOdd) {
                return const Divider();
              }
              final int index = i ~/ 2;
              if (index >= _suggestions.length) {
                _generateSuggestions();
              }
              final word = _suggestions[index];
              return TappableFavorite(word, model.favorites.contains(word),
                  () => model.toggleFavorite(word));
            }));
  }
}
