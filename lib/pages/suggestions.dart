import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'
    show WordPair, generateWordPairs;

import 'package:scoped_model/scoped_model.dart' show ScopedModelDescendant;
import 'package:roman_candle/models/typedefs.dart' show AppState;

import 'package:roman_candle/pages/favorites.dart';
import 'package:roman_candle/widgets/suggestions_list.dart';

class SuggestionsPage extends StatefulWidget {
  static final String route = "suggestions-page";

  @override
  SuggestionsPageState createState() => SuggestionsPageState();
}

class SuggestionsPageState extends State<SuggestionsPage> {
  final List<WordPair> _suggestions = <WordPair>[];
  void generateSuggestions() =>
      _suggestions.addAll(generateWordPairs().take(10));

  void goToFavorites() {
    Navigator.pushNamed(context, FavoritesPage.route);
  }

  @override
  Widget build(BuildContext context) => ScopedModelDescendant<AppState>(
      builder: (context, child, model) => Scaffold(
            appBar: AppBar(
              title: const Text('Startup Name Generator'),
              actions: <Widget>[
                IconButton(
                    icon: const Icon(Icons.list), onPressed: goToFavorites),
              ],
            ),
            body: SuggestionsList(_suggestions, generateSuggestions),
          ));
}
