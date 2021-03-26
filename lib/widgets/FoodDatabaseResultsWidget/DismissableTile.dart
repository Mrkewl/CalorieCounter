import 'package:flutter/material.dart';
import 'package:project_pheonix9/Models/MealsClass.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../constant.dart';

class DismissableTile extends StatelessWidget {
  const DismissableTile({
    @required this.tileKey,
    @required this.carbs,
    @required this.protein,
    @required this.category,
    @required this.fats,
    @required this.foodTitle,
    @required this.kcals,
    @required this.mealTime, 
  });

  final String tileKey;
  final String foodTitle;
  final String category;
  final int protein;
  final int carbs;
  final int fats;
  final int kcals;

  final String mealTime;

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    var v1 = uuid.v1();
    String breakfast = 'breakfast';
    String lunch = 'lunch';
    String dinner = 'dinner';
    final mealList = Provider.of<MealsData>(context);
    return Dismissible(
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('Are you sure you want to add?'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                RaisedButton(
                  color: Color(blue),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                    mealList.addMeals(Meals(
                      dateAdded: Provider.of<FoodSearchResults>(context, listen: false).getDateAdded,
                      //TODO
                      
                      breakfast: mealTime == breakfast ? true : false,
                      calories: kcals,
                      carbs: carbs,
                      categories: category,
                      dinner: mealTime == dinner ? true : false,
                      fat: fats,
                      id: foodTitle + v1.toString() + DateTime.now().toString(),
                      lunch: mealTime == lunch ? true : false,
                      mealName: foodTitle,
                      protein: protein,
                    ));
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
              ],
            ),
          ),
        );
      },
      onDismissed: (direction) {},
      key: Key(tileKey + DateTime.now().toString()),
      direction: DismissDirection.startToEnd,
      background: Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(darkBlue),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Icon(
              Icons.fastfood_rounded,
              color: Color(blue),
              size: 30,
            )),
      ),
      child: FoodResultsContainer(foodTitle: foodTitle, kcals: kcals, category: category, protein: protein, carbs: carbs, fats: fats),
    );
  }
}

class FoodResultsContainer extends StatelessWidget {
  const FoodResultsContainer({
    Key key,
    @required this.foodTitle,
    @required this.kcals,
    @required this.category,
    @required this.protein,
    @required this.carbs,
    @required this.fats,
  }) : super(key: key);

  final String foodTitle;
  final int kcals;
  final String category;
  final int protein;
  final int carbs;
  final int fats;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(minHeight: 90, maxHeight: 100),
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
                spreadRadius: 3,
                offset: Offset(0, 3)),
          ],
        ),
        // height: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      foodTitle,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(black).withOpacity(0.62),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    kcals.toString() + " Kcal",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(black).withOpacity(0.62),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Text(
                  category,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(black).withOpacity(0.62),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      protein.toString() + "g Proteins",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(black).withOpacity(0.62),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      carbs.toString() + "g Carbs",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(black).withOpacity(0.62),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      fats.toString() + "g Fats",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(black).withOpacity(0.62),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
