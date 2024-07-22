class Recipe {
  final String id;
  final String title;
  final String category;
  final String description;
  final String imageUrl;
  final String instructions;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.instructions,
    this.isFavorite = false,
  });
}
