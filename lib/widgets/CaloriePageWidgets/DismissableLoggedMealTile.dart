import 'package:flutter/material.dart';
import 'package:project_pheonix9/Models/MealsClass.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/screens/CurrentMealDetailScreen.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../constant.dart';
import 'mealTile.dart';

class DismissableLoggedMealTile extends StatelessWidget {
  DismissableLoggedMealTile({
    this.meal,
  });
  final Meals meal;

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    var v1 = uuid.v1();
    MealsData _mealData = Provider.of<MealsData>(context);
    return Dismissible(
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('Are you sure you want to remove?'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Color(blue),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      'Yes',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      'No',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      onDismissed: (direction) {
        _mealData.removeMeals(meal);
      },
      direction: DismissDirection.endToStart,
      background: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.red,
          ),
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.delete,
              size: 30,
              color: Colors.red[50],
            ),
          ),
        ),
      ),
      key: Key(v1 + DateTime.now().toString()),
      child: MealTile(
        pushpage: () {
          Navigator.pushNamed(
              context, CurrentMealDetailScreen.currentMealDetailScreen,
              arguments: meal);
        },
        mealName: meal.mealName,
        mealCalories: meal.calories,
      ),
    );
  }
}
