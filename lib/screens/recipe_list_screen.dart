import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'recipe_detail_screen.dart';

class RecipeListScreen extends StatefulWidget {
  final String category;
  final List<Recipe> recipes;
  final Function(Recipe) onFavoriteToggle;

  const RecipeListScreen({
    super.key,
    required this.category,
    required this.recipes,
    required this.onFavoriteToggle,
  });

  @override
  // ignore: library_private_types_in_public_api
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryRecipes = widget.category == 'All'
        ? widget.recipes
        : widget.recipes.where((r) => r.category == widget.category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: ListView.builder(
        itemCount: categoryRecipes.length,
        itemBuilder: (ctx, index) {
          final recipe = categoryRecipes[index];
          return ListTile(
            leading: Image.network(recipe.imageUrl,
                width: 50, height: 50, fit: BoxFit.cover),
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
            trailing: IconButton(
              icon: Icon(
                  recipe.isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                setState(() {
                  recipe.isFavorite = !recipe.isFavorite;
                });
                widget.onFavoriteToggle(recipe);
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
