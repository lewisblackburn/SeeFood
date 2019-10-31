// app.dart

import 'package:flutter/material.dart';
import 'screens/recipes/recipes.dart';
import 'screens/recipe_detail/recipe_detail.dart';
import 'style.dart';

const RecipesRoute = '/';
const RecipeDetailRoute = '/recipes_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Recipes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case RecipesRoute:
          screen = Recipes();
          break;
        case RecipeDetailRoute:
          screen = RecipeDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: AppBarTextStyle),
            iconTheme: IconThemeData(color: Colors.white)),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0));
  }
}
