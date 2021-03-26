import 'package:flutter/material.dart';

class MealTile extends StatelessWidget {
  MealTile(
      {this.mealName,
      this.mealCalories,
      this.breakfast,
      this.lunch,
      this.dinner,
      this.pushpage});
  final String mealName;
  final int mealCalories;
  final bool breakfast;
  final bool lunch;
  final bool dinner;
  final Function pushpage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pushpage,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, bottom: 2, top: 2),
        child: Container(
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(top: 14, bottom: 14, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mealName,
                style: TextStyle(fontSize: 20),
              ),
              // mealsData[index].mealName, style: TextStyle(fontSize: 18),),
              Text(
                mealCalories.toString() + " Kcal",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
