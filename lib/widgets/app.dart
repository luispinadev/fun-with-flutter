import 'package:flutter/material.dart';

import 'package:roman_candle/pages/suggestions.dart' show SuggestionsPage;
import 'package:roman_candle/pages/favorites.dart' show FavoritesPage;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      initialRoute: SuggestionsPage.route,
      routes: {
        '/': (context) => SuggestionsPage(),
        SuggestionsPage.route: (context) => SuggestionsPage(),
        FavoritesPage.route: (context) => FavoritesPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}
