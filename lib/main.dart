import 'package:MealsApp/screens/filters_screen.dart';
import 'package:MealsApp/screens/meal_details_screen.dart';
import 'package:MealsApp/screens/categories_screen.dart';
import 'package:MealsApp/screens/category_meals.dart';
import 'package:MealsApp/screens/tab_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                headline6: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondesnsed',
                    fontWeight: FontWeight.bold),
              )),
      debugShowCheckedModeBanner: false,
      // home: TabsScreen(),
      initialRoute: '/',
      routes: {
        '/' :(ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealsDetailsScreen.routeName: (ctx) => MealsDetailsScreen(),
        FiltersScreen.routName: (ctx) => FiltersScreen(),
      },
      // onGenerateRoute: (settings){
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (ctx)=> CategoriesScreen());
      // },
      onUnknownRoute: (settings){
        return  MaterialPageRoute(builder: (ctx)=> CategoriesScreen());
      },
    );
  }
}
