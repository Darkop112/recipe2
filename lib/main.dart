import 'package:flutter/material.dart';
import 'models/recipe.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        id: '1',
        title: 'Spaghetti',
        category: 'Pasta',
        description: 'Delicious spaghetti with marinara sauce.',
        imageUrl: 'https://example.com/spaghetti.jpg',
        instructions: '1. Cook spaghetti...\n2. Prepare sauce...',
      ),
      Recipe(
        id: '2',
        title: 'Chicken Curry',
        category: 'Main Course',
        description: 'Spicy chicken curry with a blend of spices.',
        imageUrl: 'https://example.com/chicken_curry.jpg',
        instructions: '1. Marinate chicken...\n2. Cook with spices...',
      ),
      Recipe(
        id: '3',
        title: 'Caesar Salad',
        category: 'Salad',
        description: 'Classic Caesar salad with creamy dressing.',
        imageUrl: 'https://example.com/caesar_salad.jpg',
        instructions: '1. Prepare lettuce...\n2. Mix with dressing...',
      ),
      Recipe(
        id: '4',
        title: 'Beef Stroganoff',
        category: 'Main Course',
        description: 'Creamy beef stroganoff with mushrooms.',
        imageUrl: 'https://example.com/beef_stroganoff.jpg',
        instructions: '1. Cook beef...\n2. Add mushrooms and sauce...',
      ),
      Recipe(
        id: '5',
        title: 'Vegetable Stir Fry',
        category: 'Vegetarian',
        description: 'Mixed vegetable stir fry with soy sauce.',
        imageUrl: 'https://example.com/vegetable_stir_fry.jpg',
        instructions: '1. Chop vegetables...\n2. Stir fry with soy sauce...',
      ),
      Recipe(
        id: '6',
        title: 'Grilled Cheese Sandwich',
        category: 'Snack',
        description: 'Classic grilled cheese sandwich.',
        imageUrl: 'https://example.com/grilled_cheese.jpg',
        instructions: '1. Butter bread...\n2. Grill with cheese...',
      ),
      Recipe(
        id: '7',
        title: 'Apple Pie',
        category: 'Dessert',
        description: 'Traditional apple pie with a flaky crust.',
        imageUrl: 'https://example.com/apple_pie.jpg',
        instructions: '1. Prepare crust...\n2. Fill with apples...',
      ),
      Recipe(
        id: '8',
        title: 'Chicken Tacos',
        category: 'Main Course',
        description: 'Tasty chicken tacos with fresh toppings.',
        imageUrl: 'https://example.com/chicken_tacos.jpg',
        instructions: '1. Cook chicken...\n2. Assemble tacos...',
      ),
      Recipe(
        id: '9',
        title: 'Pancakes',
        category: 'Breakfast',
        description: 'Fluffy pancakes with maple syrup.',
        imageUrl: 'https://example.com/pancakes.jpg',
        instructions: '1. Mix batter...\n2. Cook on griddle...',
      ),
      Recipe(
        id: '10',
        title: 'Lasagna',
        category: 'Pasta',
        description: 'Layered lasagna with rich meat sauce.',
        imageUrl: 'https://example.com/lasagna.jpg',
        instructions: '1. Prepare sauce...\n2. Layer with noodles...',
      ),
      Recipe(
        id: '11',
        title: 'French Toast',
        category: 'Breakfast',
        description: 'Classic French toast with cinnamon.',
        imageUrl: 'https://example.com/french_toast.jpg',
        instructions: '1. Mix eggs...\n2. Soak bread and cook...',
      ),
      Recipe(
        id: '12',
        title: 'Fish and Chips',
        category: 'Main Course',
        description: 'Crispy fish and chips with tartar sauce.',
        imageUrl: 'https://example.com/fish_and_chips.jpg',
        instructions: '1. Batter fish...\n2. Fry with potatoes...',
      ),
      Recipe(
        id: '13',
        title: 'Chocolate Cake',
        category: 'Dessert',
        description: 'Rich chocolate cake with frosting.',
        imageUrl: 'https://example.com/chocolate_cake.jpg',
        instructions: '1. Mix batter...\n2. Bake and frost...',
      ),
      Recipe(
        id: '14',
        title: 'Greek Salad',
        category: 'Salad',
        description: 'Fresh Greek salad with feta cheese.',
        imageUrl: 'https://example.com/greek_salad.jpg',
        instructions: '1. Chop vegetables...\n2. Mix with dressing...',
      ),
      Recipe(
        id: '15',
        title: 'BBQ Ribs',
        category: 'Main Course',
        description: 'Smoky BBQ ribs with tangy sauce.',
        imageUrl:
            'https://delishar.com/wp-content/uploads/2013/08/Slow-Cooked-BBQ-Ribs-4.jpg',
        instructions: '1. Season ribs...\n2. Grill with BBQ sauce...',
      ),
      Recipe(
        id: '16',
        title: 'Shrimp Scampi',
        category: 'Seafood',
        description: 'Garlic shrimp scampi with pasta.',
        imageUrl: 'https://bing.com/th?id=OSK.f3b8b1e001718123c45cf31aaa41196e',
        instructions: '1. Cook shrimp...\n2. Toss with pasta...',
      ),
      Recipe(
        id: '17',
        title: 'Vegetable Soup',
        category: 'Soup',
        description: 'Hearty vegetable soup with herbs.',
        imageUrl: 'https://bing.com/th?id=OSK.239766ab50843463c9f17faf058c25e6',
        instructions: '1. Chop vegetables...\n2. Simmer with broth...',
      ),
      Recipe(
        id: '18',
        title: 'Margarita Pizza',
        category: 'Pizza',
        description: 'Classic Margarita pizza with fresh basil.',
        imageUrl:
            'https://th.bing.com/th/id/R.469eaee2b9ac36c27feedfd2796cee0a?rik=Rvec%2b%2bz8yQtN5g&riu=http%3a%2f%2fastrolabio.com.mx%2fwp-content%2fuploads%2f2015%2f11%2fPizza-Margherita.jpg&ehk=oLfkE5pRt3sWIYWRbo76Bpm4LZPNIJozQ3VuCCbX16M%3d&risl=&pid=ImgRaw&r=0',
        instructions: '1. Prepare dough...\n2. Top with tomatoes and cheese...',
      ),
      Recipe(
        id: '19',
        title: 'Chicken Alfredo',
        category: 'Pasta',
        description: 'Creamy chicken alfredo pasta.',
        imageUrl:
            'https://th.bing.com/th/id/OIP.whO_s1PidCEAcMaSPtH4iQHaHa?rs=1&pid=ImgDetMain',
        instructions: '1. Cook chicken...\n2. Mix with Alfredo sauce...',
      ),
      Recipe(
        id: '20',
        title: 'Banana Bread',
        category: 'Dessert',
        description: 'Moist banana bread with walnuts.',
        imageUrl:
            'https://th.bing.com/th/id/OIP.8acVSwoSUgkNaJDGwQ6L_QHaJY?w=960&h=1216&rs=1&pid=ImgDetMain',
        instructions: '1. Mix ingredients...\n2. Bake until golden...',
      ),
      Recipe(
        id: '21',
        title: 'Beef Tacos',
        category: 'Main Course',
        description: 'Juicy beef tacos with fresh salsa.',
        imageUrl:
            'https://th.bing.com/th/id/R.7ae9864c4bd6c7719ffe86f78b011c44?rik=K%2bheliydiXi%2bvA&riu=http%3a%2f%2flife-in-the-lofthouse.com%2fwp-content%2fuploads%2f2014%2f08%2fShredded_Beef_Tacos.jpg&ehk=BzIiXSdbcOhBPFif9isvmeXYcekYfhD6jIXhkHBpOsg%3d&risl=&pid=ImgRaw&r=0',
        instructions: '1. Cook beef...\n2. Assemble tacos with salsa...',
      ),
    ];

    return MaterialApp(
      home: MainScreen(recipes: recipes),
    );
  }
}
