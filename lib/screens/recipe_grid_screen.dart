import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'recipe_detail_screen.dart';

class RecipeGridScreen extends StatelessWidget {
  final List<Recipe> recipes;
  final Function(Recipe) onFavoriteToggle;

  const RecipeGridScreen({
    super.key,
    required this.recipes,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: recipes.length,
        itemBuilder: (ctx, index) {
          final recipe = recipes[index];
          return GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => RecipeDetailScreen(
                    recipe: recipe,
                    onFavoriteToggle: onFavoriteToggle,
                  ),
                ));
              },
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      recipe.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    recipe.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      recipe.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                    onPressed: () {
                      onFavoriteToggle(recipe);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
