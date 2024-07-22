import 'package:flutter/material.dart';
import 'package:recipe_app/app_drawer.dart';
import '../models/recipe.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'recipe_grid_screen.dart';
import '../services/favorites_service.dart';

class MainScreen extends StatefulWidget {
  final List<Recipe> recipes;

  const MainScreen({super.key, required this.recipes});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Recipe> _recipes = [];
  late FavoritesService _favoritesService;
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _favoritesService = FavoritesService();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final favorites = await _favoritesService.getFavorites();
    setState(() {
      _recipes = widget.recipes.map((recipe) {
        if (favorites.any((fav) => fav.id == recipe.id)) {
          recipe.isFavorite = true;
        }
        return recipe;
      }).toList();
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleFavorite(Recipe recipe) async {
    setState(() {
      recipe.isFavorite = !recipe.isFavorite;
    });
    if (recipe.isFavorite) {
      await _favoritesService.addFavorite(recipe);
    } else {
      await _favoritesService.removeFavorite(recipe);
    }
  }

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(
        recipes: _recipes,
        onFavoriteToggle: _toggleFavorite,
      ),
      RecipeGridScreen(
        recipes: _recipes,
        onFavoriteToggle: _toggleFavorite,
      ),
      FavoritesScreen(
        recipes: _recipes,
        onFavoriteToggle: _toggleFavorite,
      ),
    ];

    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recipe App'),
        ),
        drawer: AppDrawer(
          onThemeChanged: _toggleTheme,
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Foods',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
