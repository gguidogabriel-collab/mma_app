import 'package:flutter/material.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void toggleFavorite(String discipline) {
    if (_favorites.contains(discipline)) {
      _favorites.remove(discipline);
    } else {
      _favorites.add(discipline);
    }

    notifyListeners();
  }

  bool isFavorite(String discipline) {
    return _favorites.contains(discipline);
  }
}