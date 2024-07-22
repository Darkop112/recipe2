import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'recipe_list_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<Recipe> recipes;
  final Function(Recipe) onFavoriteToggle;

  const HomeScreen(
      {super.key, required this.recipes, required this.onFavoriteToggle});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCategory = 'All';
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    categories =
        widget.recipes.map((recipe) => recipe.category).toSet().toList();
    categories.insert(0, 'All');
  }

  @override
  Widget build(BuildContext context) {
    final filteredRecipes = _selectedCategory == 'All'
        ? widget.recipes
        : widget.recipes.where((r) => r.category == _selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Categories'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (ctx, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: _selectedCategory == category
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: _selectedCategory == category
                            ? Colors.blue
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.5,
              ),
              itemCount: filteredRecipes.length,
              itemBuilder: (ctx, index) {
                final recipe = filteredRecipes[index];
                final imageUrl = recipe.imageUrl;

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => RecipeListScreen(
                          category: recipe.category,
                          recipes: widget.recipes,
                          onFavoriteToggle: widget.onFavoriteToggle,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          recipe.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(
                            recipe.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                          onPressed: () {
                            widget.onFavoriteToggle(recipe);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
