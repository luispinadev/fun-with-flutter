import 'package:english_words/english_words.dart' show WordPair;

import './favorites.dart' show Favorites;

// Type alias for state
mixin NoOp {}
class AppState = Favorites<WordPair> with NoOp;
