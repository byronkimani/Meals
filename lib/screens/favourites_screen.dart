import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';
import '../models/meal.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> _favouriteMeals;

  FavouritesScreen(this._favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (_favouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet — start adding some!'),
      );
    } else {
      return ListView.builder(
        itemCount: _favouriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favouriteMeals[index].id,
            title: _favouriteMeals[index].title,
            imageUrl: _favouriteMeals[index].imageUrl,
            duration: _favouriteMeals[index].duration,
            complexity: _favouriteMeals[index].complexity,
            affordability: _favouriteMeals[index].affordability,
          );
        },
      );
    }
  }
}
