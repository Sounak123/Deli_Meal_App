import 'package:deli_app/models/meal.dart';
import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  final List<Meal> favoriteMeals= [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title:Text('Meal'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',

              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(favoriteMeals)
          ]
        ),
      )
    );
  }
}
/**
 * DefaultTabController 
 * returns a scaffold containing multiple widgets
 * also the 
 * 
 */