// models/recipe.dart

import 'recipe_fact.dart';

class Recipe {
  final int id;
  String name;
  String imagePath;
  final List<RecipeFact> facts;

  Recipe(this.id, this.name, this.imagePath, this.facts);

  static List<Recipe> fetchAll() {
    return [
      Recipe(1, 'Paella', 'assets/images/Paella.jpg', [
        RecipeFact('Summary',
            'Named for the vessel in which it’s cooked, paella is a perfect meal for two or a larger group. This classic Spanish rice dish is festive and fun to eat, but a long ingredient list—seafood, meat, sausage, vegetables, seasonings, and more—can deter some home cooks from making it'),
        RecipeFact('A Cooking Secret',
            ' With a few tweaks, you can make it at home in under an hour. Our effortless recipe builds vibrant flavors by cooking each ingredient in the pan. Yes, saffron threads are a bit of an investment, but they have a very long shelf life.'),
        RecipeFact('Conlcusion',
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
      ]),
      Recipe(2, 'Galette', 'assets/images/Galette.jpg', [
        RecipeFact('Summary',
            'Don’t be intimidated by the elegant name—a galette is actually much easier to make than pie. In fact, you barely need a recipe. This French freeform tart is the perfect way to elevate seasonal fruit, whether it’s fresh fall apples or juicy summer berries.'),
        RecipeFact('Not A Cooking Secret',
            "Simply roll out your dough, spoon your filling into the middle, fold the sides in, and bake. Best of all, no pie pan required. Guests will love the rustic presentation of our Apple Galette recipe, which gets a boost from a drizzle of vanilla bean-yogurt sauce over top."),
        RecipeFact('Conclusion',
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
      ])
    ];
  }

  static Recipe fetchByID(int recipeID) {
    // fetch all recipes, iterate them and when we find the recipe
    // with the ID we want, return it immediately
    List<Recipe> recipes = Recipe.fetchAll();
    for (var i = 0; i < recipes.length; i++) {
      if (recipes[i].id == recipeID) {
        return recipes[i];
      }
    }
    return null;
  }
}
