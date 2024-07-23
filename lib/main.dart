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
  imageUrl: 'https://img.grouponcdn.com/deal/SBUYuek5Cz7zETAoqrzoGxySHLS/SB-2048x1229/v1/t440x300.jpg',
  instructions: '''1. Cook the spaghetti according to package instructions until al dente.
2. In a separate pan, heat olive oil over medium heat.
3. Add minced garlic and sauté until fragrant.
4. Pour in marinara sauce and bring to a simmer.
5. Mix in cooked spaghetti and toss to combine.
6. Serve with grated Parmesan cheese and fresh basil.''',
),
Recipe(
  id: '2',
  title: 'Chicken Curry',
  category: 'Main Course',
  description: 'Spicy chicken curry with a blend of spices.',
  imageUrl: 'https://feastwithsafiya.com/wp-content/uploads/2022/03/chicken-curry-recipe.jpg',
  instructions: '''1. Marinate chicken pieces with yogurt and spices for at least 1 hour.
2. In a large pot, heat oil and add chopped onions, cooking until golden brown.
3. Add garlic, ginger, and spices, and sauté for a few minutes.
4. Add marinated chicken and cook until browned.
5. Pour in coconut milk and simmer until chicken is cooked through.
6. Serve hot with rice or naan bread.''',
),
Recipe(
  id: '3',
  title: 'Caesar Salad',
  category: 'Salad',
  description: 'Classic Caesar salad with creamy dressing.',
  imageUrl: 'https://th.bing.com/th/id/OIP.VymvMueWZCUS045b3zyoDgHaJ4?rs=1&pid=ImgDetMain',
  instructions: '''1. Prepare romaine lettuce by washing and drying.
2. Mix together dressing ingredients: mayonnaise, lemon juice, Worcestershire sauce, minced garlic, Dijon mustard, salt, and pepper.
3. Toss the lettuce with the dressing until evenly coated.
4. Top with croutons and grated Parmesan cheese.
5. Serve immediately.''',
),
Recipe(
  id: '4',
  title: 'Beef Stroganoff',
  category: 'Main Course',
  description: 'Creamy beef stroganoff with mushrooms.',
  imageUrl: 'https://th.bing.com/th/id/OIP.Rhq7YS2tVrlDgrrPIbkHJAHaE8?rs=1&pid=ImgDetMain',
  instructions: '''1. Cook beef strips in a large skillet over medium-high heat until browned.
2. Add sliced mushrooms and onions, and sauté until softened.
3. Stir in beef broth and bring to a simmer.
4. Mix in sour cream and Dijon mustard, and cook until the sauce thickens.
5. Serve over egg noodles or rice, garnished with fresh parsley.''',
),
Recipe(
  id: '5',
  title: 'Vegetable Stir Fry',
  category: 'Vegetarian',
  description: 'Mixed vegetable stir fry with soy sauce.',
  imageUrl: 'https://i2.wp.com/lifemadesimplebakes.com/wp-content/uploads/2021/04/vegetable-stir-fry-resize-16.jpg',
  instructions: '''1. Chop vegetables such as bell peppers, broccoli, carrots, and snap peas into bite-sized pieces.
2. Heat oil in a large wok or skillet over high heat.
3. Add vegetables and stir fry until tender-crisp.
4. Stir in soy sauce, garlic, and ginger, and cook for an additional minute.
5. Serve hot over rice or noodles.''',
),
Recipe(
  id: '6',
  title: 'Grilled Cheese Sandwich',
  category: 'Snack',
  description: 'Classic grilled cheese sandwich.',
  imageUrl: 'https://th.bing.com/th/id/OIP.zCgr0Gsjfiqn2KwUXGf6zAHaE6?rs=1&pid=ImgDetMain',
  instructions: '''1. Butter one side of each bread slice.
2. Place a slice of cheese between two slices of bread, with the buttered sides facing out.
3. Heat a skillet over medium heat and cook the sandwich until golden brown on both sides and the cheese is melted.
4. Serve hot.''',
),
Recipe(
  id: '7',
  title: 'Apple Pie',
  category: 'Dessert',
  description: 'Traditional apple pie with a flaky crust.',
  imageUrl: 'https://appleforthat.stemilt.com/wp-content/uploads/2016/06/Apple-Pie.jpg',
  instructions: '''1. Prepare the pie crust and line a pie dish with the bottom crust.
2. Peel and slice apples, then mix with sugar, cinnamon, and flour.
3. Pour apple mixture into the crust and dot with butter.
4. Cover with the top crust, seal the edges, and cut slits for steam to escape.
5. Bake at 375°F (190°C) for about 50 minutes, until the crust is golden brown.
6. Let cool before serving.''',
),
Recipe(
  id: '8',
  title: 'Chicken Tacos',
  category: 'Main Course',
  description: 'Tasty chicken tacos with fresh toppings.',
  imageUrl: 'https://th.bing.com/th/id/OIP.1dXiigDA9d5TUoBBI202EwHaLF?rs=1&pid=ImgDetMain',
  instructions: '''1. Cook chicken breasts in a skillet over medium heat until no longer pink, then shred.
2. Season with taco seasoning and a splash of water, and cook until the water evaporates.
3. Warm taco shells and fill with shredded chicken.
4. Top with lettuce, tomatoes, cheese, sour cream, and salsa.
5. Serve immediately.''',
),
Recipe(
  id: '9',
  title: 'Pancakes',
  category: 'Breakfast',
  description: 'Fluffy pancakes with maple syrup.',
  imageUrl: 'https://th.bing.com/th/id/OIP.YPqzmw3cLLZEParlz5MuKwHaHa?rs=1&pid=ImgDetMain',
  instructions: '''1. Mix together flour, sugar, baking powder, and salt in a bowl.
2. In a separate bowl, whisk together milk, egg, and melted butter.
3. Pour the wet ingredients into the dry ingredients and stir until just combined.
4. Heat a griddle or skillet over medium heat and grease with butter or oil.
5. Pour batter onto the griddle and cook until bubbles form on the surface, then flip and cook until golden brown.
6. Serve hot with maple syrup and butter.''',
),
Recipe(
  id: '10',
  title: 'Lasagna',
  category: 'Pasta',
  description: 'Layered lasagna with rich meat sauce.',
  imageUrl: 'https://www.modernhoney.com/wp-content/uploads/2019/08/Classic-Lasagna-13-scaled.jpg',
  instructions: '''1. Prepare the meat sauce by browning ground beef with onions and garlic, then adding tomato sauce and simmering.
2. Cook lasagna noodles according to package instructions.
3. Mix together ricotta cheese, egg, and parsley.
4. In a baking dish, layer meat sauce, noodles, ricotta mixture, and shredded mozzarella cheese.
5. Repeat layers and finish with a layer of mozzarella cheese on top.
6. Bake at 375°F (190°C) for about 45 minutes, until bubbly and golden.
7. Let rest before serving.''',
),
Recipe(
  id: '11',
  title: 'French Toast',
  category: 'Breakfast',
  description: 'Classic French toast with cinnamon.',
  imageUrl: 'https://embed.widencdn.net/img/mccormick/htzunwgdp2/1365x1365px/quick_and_easy_french_toast_3898.jpg?crop=true&anchor=341,0&q=80&color=ffffffff&u=o2hyef',
  instructions: '''1. Whisk together eggs, milk, cinnamon, and vanilla extract in a shallow dish.
2. Dip slices of bread into the egg mixture, coating both sides.
3. Heat a skillet over medium heat and melt butter.
4. Cook the bread slices until golden brown on both sides.
5. Serve hot with syrup, powdered sugar, and fresh berries.''',
),
Recipe(
  id: '12',
  title: 'Fish and Chips',
  category: 'Main Course',
  description: 'Crispy fish and chips with tartar sauce.',
  imageUrl: 'https://th.bing.com/th/id/R.0da07ea8fbbd1490f86a6c44670119a5?rik=Z30esLSYjx6F7A&riu=http%3a%2f%2fwww.queenfishandchips.com%2fresources%2fFISH+CHIPS.jpg&ehk=DG6zNtPwc6fthKXziqczWkwnvWYE01FZe9tz63T1R%2fU%3d&risl=&pid=ImgRaw&r=0',
  instructions: '''1. Prepare the batter by mixing flour, baking powder, salt, and cold water.
2. Dip fish fillets into the batter, coating evenly.
3. Heat oil in a deep fryer or large pot to 375°F (190°C).
4. Fry the battered fish until golden brown and crispy.
5. For the chips, cut potatoes into thick strips and fry until golden and crispy.
6. Serve the fish and chips with tartar sauce and lemon wedges.''',
),
Recipe(
  id: '13',
  title: 'Chocolate Cake',
  category: 'Dessert',
  description: 'Rich chocolate cake with frosting.',
  imageUrl: 'https://joyfoodsunshine.com/wp-content/uploads/2020/08/best-chocolate-cake-recipe-from-scratch-8.jpg',
  instructions: '''1. Preheat oven to 350°F (175°C). Grease and flour two 9-inch round baking pans.
2. In a large bowl, mix together sugar, flour, cocoa powder, baking powder, baking soda, and salt.
3. Add eggs, milk, oil, and vanilla extract, and beat on medium speed for 2 minutes.
4. Stir in boiling water (batter will be thin).
5. Pour batter into prepared pans and bake for 30 to 35 minutes, until a toothpick inserted into the center comes out clean.
6. Cool in pans for 10 minutes, then remove to wire racks to cool completely.
7. Frost with your favorite chocolate frosting.''',
),
Recipe(
  id: '14',
  title: 'Greek Salad',
  category: 'Salad',
  description: 'Fresh Greek salad with feta cheese.',
  imageUrl: 'https://www.italianbellavita.com/wp-content/uploads/2022/08/739C7136-CBA2-4DDC-8D56-ECA409F69AB9-3.jpeg',
  instructions: '''1. Chop tomatoes, cucumbers, red onions, and bell peppers into bite-sized pieces.
2. Add Kalamata olives and crumbled feta cheese.
3. In a small bowl, whisk together olive oil, lemon juice, oregano, salt, and pepper.
4. Pour the dressing over the salad and toss to combine.
5. Serve immediately.''',
),
Recipe(
  id: '15',
  title: 'BBQ Ribs',
  category: 'Main Course',
  description: 'Smoky BBQ ribs with tangy sauce.',
  imageUrl: 'https://th.bing.com/th/id/OIP.JyHY5dvaBXR11nTGpLwW-wHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain',
  instructions: '''1. Season ribs with a dry rub of your choice, ensuring they are well coated.
2. Preheat grill to medium heat.
3. Place ribs on the grill and cook, turning occasionally, until the meat is tender and pulls away from the bone.
4. Brush with BBQ sauce during the last few minutes of grilling.
5. Let rest for a few minutes before serving.''',
),
Recipe(
  id: '16',
  title: 'Shrimp Scampi',
  category: 'Seafood',
  description: 'Garlic shrimp scampi with pasta.',
  imageUrl: 'https://bing.com/th?id=OSK.f3b8b1e001718123c45cf31aaa41196e',
  instructions: '''1. Cook pasta according to package instructions.
2. In a large skillet, melt butter and olive oil over medium heat.
3. Add minced garlic and red pepper flakes, and sauté until fragrant.
4. Add shrimp and cook until pink and opaque.
5. Stir in white wine and lemon juice, and simmer for a few minutes.
6. Toss the cooked pasta with the shrimp mixture.
7. Serve garnished with fresh parsley.''',
),
Recipe(
  id: '17',
  title: 'Vegetable Soup',
  category: 'Soup',
  description: 'Hearty vegetable soup with herbs.',
  imageUrl: 'https://bing.com/th?id=OSK.239766ab50843463c9f17faf058c25e6',
  instructions: '''1. Chop vegetables such as carrots, celery, potatoes, and tomatoes into bite-sized pieces.
2. Heat oil in a large pot over medium heat.
3. Add onions and garlic, and sauté until softened.
4. Add chopped vegetables, vegetable broth, and herbs such as thyme and bay leaves.
5. Bring to a boil, then reduce heat and simmer until vegetables are tender.
6. Season with salt and pepper to taste.
7. Serve hot with crusty bread.''',
),
Recipe(
  id: '18',
  title: 'Margarita Pizza',
  category: 'Pizza',
  description: 'Classic Margarita pizza with fresh basil.',
  imageUrl: 'https://th.bing.com/th/id/R.469eaee2b9ac36c27feedfd2796cee0a?rik=Rvec%2b%2bz8yQtN5g&riu=http%3a%2f%2fastrolabio.com.mx%2fwp-content%2fuploads%2f2015%2f11%2fPizza-Margherita.jpg&ehk=oLfkE5pRt3sWIYWRbo76Bpm4LZPNIJozQ3VuCCbX16M%3d&risl=&pid=ImgRaw&r=0',
  instructions: '''1. Preheat oven to 475°F (245°C) and place a pizza stone inside.
2. Roll out pizza dough on a floured surface.
3. Spread a thin layer of tomato sauce over the dough.
4. Top with slices of fresh mozzarella cheese.
5. Bake on the preheated pizza stone until the crust is golden and the cheese is bubbly.
6. Garnish with fresh basil leaves before serving.''',
),
Recipe(
  id: '19',
  title: 'Chicken Alfredo',
  category: 'Pasta',
  description: 'Creamy chicken alfredo pasta.',
  imageUrl: 'https://themom100.com/wp-content/uploads/2023/11/chicken-alfredo-196-450x450.jpg',
  instructions: '''1. Cook pasta according to package instructions.
2. In a large skillet, heat oil and cook chicken breasts until golden and cooked through.
3. Remove chicken and slice into strips.
4. In the same skillet, melt butter and add minced garlic, cooking until fragrant.
5. Stir in heavy cream and Parmesan cheese, and cook until the sauce thickens.
6. Add the cooked pasta and chicken to the sauce, tossing to coat.
7. Serve hot, garnished with additional Parmesan and parsley.''',
),
Recipe(
  id: '20',
  title: 'Banana Bread',
  category: 'Dessert',
  description: 'Moist banana bread with walnuts.',
  imageUrl: 'https://th.bing.com/th/id/OIP.8acVSwoSUgkNaJDGwQ6L_QHaJY?w=960&h=1216&rs=1&pid=ImgDetMain',
  instructions: '''1. Preheat oven to 350°F (175°C). Grease a loaf pan.
2. In a large bowl, mash ripe bananas.
3. Mix in melted butter, sugar, egg, and vanilla extract.
4. Stir in baking soda, salt, and flour until just combined.
5. Fold in chopped walnuts.
6. Pour the batter into the prepared loaf pan.
7. Bake for 60 to 65 minutes, until a toothpick inserted into the center comes out clean.
8. Let cool in the pan for 10 minutes, then remove to a wire rack to cool completely.''',
),
Recipe(
  id: '21',
  title: 'Beef Tacos',
  category: 'Main Course',
  description: 'Juicy beef tacos with fresh salsa.',
  imageUrl: 'https://th.bing.com/th/id/R.7ae9864c4bd6c7719ffe86f78b011c44?rik=K%2bheliydiXi%2bvA&riu=http%3a%2f%2flife-in-the-lofthouse.com%2fwp-content%2fuploads%2f2014%2f08%2fShredded_Beef_Tacos.jpg&ehk=BzIiXSdbcOhBPFif9isvmeXYcekYfhD6jIXhkHBpOsg%3d&risl=&pid=ImgRaw&r=0',
  instructions: '''1. Cook ground beef in a skillet over medium heat until browned. Drain any excess fat.
2. Add taco seasoning and a splash of water, and cook until the water evaporates.
3. Warm taco shells and fill with the seasoned beef.
4. Top with fresh salsa, shredded lettuce, cheese, and sour cream.
5. Serve immediately.''',
),

    ];

    return MaterialApp(
      home: MainScreen(recipes: recipes),
    );
  }
}
