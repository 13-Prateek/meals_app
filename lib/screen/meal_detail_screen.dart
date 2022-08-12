import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDeatilScreen extends StatefulWidget {
  final Function toggleFavorite;
  final Function isFavorite;
  MealDeatilScreen(this.toggleFavorite, this.isFavorite);

  @override
  _MealDeatilScreenState createState() => _MealDeatilScreenState();
}

class _MealDeatilScreenState extends State<MealDeatilScreen> {
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${selectedMeal.title}',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Ingrediants',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                height: 150,
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Theme.of(context).accentColor,
                      child: Text(selectedMeal.ingredients[index]),
                    );
                  },
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Steps',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                height: 150,
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Theme.of(context).accentColor,
                      child: Text(selectedMeal.steps[index]),
                    );
                  },
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child:
              Icon (widget.isFavorite(mealId) ? Icons.star : Icons.star_border),
          onPressed: () => widget.toggleFavorite(mealId),
        ));
  }
}
