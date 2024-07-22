import 'package:flutter/material.dart';

class CategorySearchDelegate extends SearchDelegate<String> {
  final List<String> categories;
  final Function(String) onCategorySelected;

  CategorySearchDelegate({
    required this.categories,
    required this.onCategorySelected,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = categories.where((category) {
      return category.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (ctx, index) {
        final category = suggestions[index];
        return ListTile(
          title: Text(category),
          onTap: () {
            onCategorySelected(category);
            close(context, category);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = categories.where((category) {
      return category.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (ctx, index) {
        final category = suggestions[index];
        return ListTile(
          title: Text(category),
          onTap: () {
            onCategorySelected(category);
            close(context, category);
          },
        );
      },
    );
  }
}
