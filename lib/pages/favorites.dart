import 'package:flutter/material.dart';

// State
import 'package:scoped_model/scoped_model.dart' show ScopedModelDescendant;
import 'package:roman_candle/models/typedefs.dart' show AppState;


class FavoritesPage extends StatelessWidget {
  static final String route = "favorites-page";
  // use theme instead
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppState>(builder: (context, child, model) {
      // CREATE LIST
      final tiles = model.favorites.map(
        (pair) => ListTile(
              title: Text(
                pair.asPascalCase,
                style: _biggerFont,
              ),
            ),
      );

      // ADD SPACERS
      final divided = ListTile.divideTiles(
        context: context,
        tiles: tiles,
      );

      return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Words'),
        ),
        body: ListView(children: divided.toList()),
      );
    });
  }
}
