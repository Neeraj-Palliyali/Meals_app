
import 'package:MealsApp/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:MealsApp/widgets/meal_item.dart';


class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
    return Container(
      child: Center(child: Text("You have no Favorites")),
    );}
    else{
       return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              imageUrl: favoriteMeals[index].imageUrl,
              duration: favoriteMeals[index].duration,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,

            );
          },
          itemCount: favoriteMeals.length,
        );
    }
  }
}