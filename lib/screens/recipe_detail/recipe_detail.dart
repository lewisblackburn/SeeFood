// screens/recipe_detail/recipe_detail.dart

import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/recipe.dart';

class RecipeDetail extends StatelessWidget {
  final int _recipeID;

  RecipeDetail(this._recipeID);

  @override
  Widget build(BuildContext context) {
    final recipe = Recipe.fetchByID(_recipeID);

    return Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
          title: Text(recipe.name),
        ),
        body: ListView(
          children: <Widget>[
            ImageBanner(recipe.imagePath),
          ]..addAll(textSections(recipe)),
        ));
  }

  List<Widget> textSections(Recipe recipe) {
    return recipe.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
