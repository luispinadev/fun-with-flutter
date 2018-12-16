import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' show WordPair;

class TappableFavorite extends StatelessWidget {
  final WordPair _word;
  final bool _isFavorite;
  final void Function() _onTap;

  TappableFavorite(this._word, this._isFavorite, this._onTap);

  // use Theme instead
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) => ListTile(
      title: Text(_word.asPascalCase, style: _biggerFont),
      trailing: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: _isFavorite ? Colors.red : null,
      ),
      onTap: _onTap);
}
