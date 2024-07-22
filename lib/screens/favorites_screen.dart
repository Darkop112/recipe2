import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'recipe_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Recipe> recipes;
  final Function(Recipe) onFavoriteToggle;

  const FavoritesScreen({
    super.key,
    required this.recipes,
    required this.onFavoriteToggle,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  late List<Recipe> favoriteRecipes;

  @override
  void initState() {
    super.initState();
    _updateFavorites();
  }

  void _updateFavorites() {
    setState(() {
      favoriteRecipes = widget.recipes.where((r) => r.isFavorite).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (ctx, index) {
          final recipe = favoriteRecipes[index];
          return ListTile(
            leading: Image.network(recipe.imageUrl,
                width: 50, height: 50, fit: BoxFit.cover),
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('${recipe.title} removed from favorites')),
                );
                widget.onFavoriteToggle(recipe);
                _updateFavorites();
              },
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => RecipeDetailScreen(
                    recipe: recipe,
                    onFavoriteToggle: widget.onFavoriteToggle,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
