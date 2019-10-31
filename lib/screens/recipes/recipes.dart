// screens/recipes/recipes.dart

import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/recipe.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final recipes = Recipe.fetchAll();

    return Scaffold(
        backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
          title: Text('SeeFood'),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: recipes
              .map((recipe) => Container(
                    // child: Text(recipe.id.toString()),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 10, right: 20.0),
                        child: ButtonTheme(
                          minWidth: 1000.0,
                          height: 40.0,
                          buttonColor: Color.fromRGBO(18, 18, 18, 1.0),
                          child: RaisedButton(
                              onPressed: () => _onRecipeTap(context, recipe.id),
                              child: Text(
                                recipe.name,
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        )));
  }

  _onRecipeTap(BuildContext context, int recipeID) {
    Navigator.pushNamed(context, RecipeDetailRoute,
        arguments: {"id": recipeID});
  }
}
