import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_pheonix9/Models/MealsClass.dart';
import 'package:project_pheonix9/Models/foodSearch_Models.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/Calorie_MacroDescriptionTile.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/Percentage_ofDailyGoalTile.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/SlidableServingAlertDialog.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/servingNumberTile.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/servingSizeTile.dart';
import 'package:project_pheonix9/widgets/ResultDetailWidgets/titleCategoryTileWidget.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class ResultDetailScreen extends StatefulWidget {
  static final String resultDetailScreen = '/b';

  @override
  _ResultDetailScreenState createState() => _ResultDetailScreenState();
}

class _ResultDetailScreenState extends State<ResultDetailScreen> {
  String breakfast = 'breakfast';
  String lunch = 'lunch';

  String dinner = 'dinner';
  double newValue = 1;
  int getCarbs(int carbs, double servings, double newServings) {
    return ((carbs / servings) * newValue).toInt();
  }

  int getFats(int fats, double servings, double newServings) {
    return ((fats / servings) * newValue).toInt();
  }

  int getProteins(int proteins, double servings, double newServings) {
    return ((proteins / servings) * newValue).toInt();
  }

  int getKcals(int kcals, double servings, double newServings) {
    return ((kcals / servings) * newValue).toInt();
  }

  @override
  Widget build(BuildContext context) {
    final FoodSearchModel foodsearch =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Title_CategoryTile(
              category: foodsearch.brandCategory,
              title: foodsearch.title,
            ),

            //TODO This Container is servingNumber
            //TODO THIS CONTAINER IS FUCKED, Move Everything to number tile
            GestureDetector(
              onTap: () async {
                newValue = await showDialog<double>(
                    context: context,
                    builder: (ctx) => SlidableServingAlertDialog(
                          servingValue: 2,
                        ));

                setState(() {
                  newValue ??= 1;
                  newValue;
                });
              },
              child: ServingNumberTile(
                servingNumber: newValue,
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //TODO This is Serving Size
            GestureDetector(
              onTap: () {},
              child: ServingSizeTile(
                servingSize: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Calorie_MacroDescriptionTile(
                      carbs: getCarbs(
                          foodsearch.carbs, foodsearch.servings, newValue),
                      fats: getFats(
                          foodsearch.fat, foodsearch.servings, newValue),
                      protein: getProteins(
                          foodsearch.protein, foodsearch.servings, newValue),
                      kcal: getKcals(
                          foodsearch.kcal, foodsearch.servings, newValue)),
                ),
                Expanded(
                  child: PercentageOfDailyGoalsTile(),
                ),
              ],
            ),
            // * I AM ARMY GREEN
            //! TODO
            //? I dunnow what to do
            //THIS IS THE ADD TILE //TODO Add Gesture Detector
            GestureDetector(
              onTap: () async {
                MealsData mealData =
                    Provider.of<MealsData>(context, listen: false);
                mealData.addMeals(Meals(
                  dateAdded: 
                  //TODO
                  Provider.of<FoodSearchResults>(context, listen: false).getDateAdded,
                  breakfast: foodsearch.mealTime == breakfast ? true : false,
                  categories: foodsearch.brandCategory,
                  calories: getKcals(
                          foodsearch.kcal, foodsearch.servings, newValue),
                  fat: getFats(
                          foodsearch.fat, foodsearch.servings, newValue),
                  carbs: getCarbs(
                          foodsearch.carbs, foodsearch.servings, newValue),
                  mealName: foodsearch.title,
                  protein: getProteins(
                          foodsearch.protein, foodsearch.servings, newValue),
                  dinner: foodsearch.mealTime == dinner ? true : false,
                  lunch: foodsearch.mealTime == lunch ? true : false,
                  id: foodsearch.id,
                ));

                // var issatest = box.values;
                // await print(issatest.first.calories);
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff000000).withOpacity(0.16),
                        blurRadius: 6,
                        spreadRadius: 3,
                        offset: Offset(0, 3)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
