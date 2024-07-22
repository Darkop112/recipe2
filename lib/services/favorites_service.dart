import 'package:shared_preferences/shared_preferences.dart';
import '../models/recipe.dart';
import 'dart:convert';

class FavoritesService {
  static const String _favoritesKey = 'favorites';

  Future<void> addFavorite(Recipe recipe) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_favoritesKey) ?? [];
    final recipeJson = json.encode({
      'id': recipe.id,
      'title': recipe.title,
      'category': recipe.category,
      'description': recipe.description,
      'imageUrl': recipe.imageUrl,
      'instructions': recipe.instructions,
      'isFavorite': true
    });
    favorites.add(recipeJson);
    await prefs.setStringList(_favoritesKey, favorites);
  }

  Future<void> removeFavorite(Recipe recipe) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_favoritesKey) ?? [];
    favorites.removeWhere((jsonStr) {
      final item = json.decode(jsonStr);
      return item['id'] == recipe.id;
    });
    await prefs.setStringList(_favoritesKey, favorites);
  }

  Future<List<Recipe>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_favoritesKey) ?? [];
    return favorites.map((jsonStr) {
      final item = json.decode(jsonStr);
      return Recipe(
        id: item['id'],
        title: item['title'],
        category: item['category'],
        description: item['description'],
        imageUrl: item['imageUrl'],
        instructions: item['instructions'],
        isFavorite: item['isFavorite'],
      );
    }).toList();
  }
}
