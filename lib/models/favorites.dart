import 'package:scoped_model/scoped_model.dart' show Model;



class Favorites<T> extends Model {
  // Model data
  Set<T> _favorites = Set<T>();
  Set<T> get favorites => _favorites;

  // Actions
  void toggleFavorite(T item) {
    if (_favorites.contains(item))
      _favorites.remove(item);
    else
      _favorites.add(item);
    notifyListeners();
  }
}
