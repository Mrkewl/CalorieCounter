
import 'package:flutter/material.dart';
import 'package:project_pheonix9/Models/MealsClass.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/widgets/CurrentMealDetailwidget.dart/Calorie_MacroDescriptionTile.dart';
import 'package:project_pheonix9/widgets/CurrentMealDetailwidget.dart/Percentage_ofDailyGoalTile.dart';
import 'package:project_pheonix9/widgets/CurrentMealDetailwidget.dart/servingNumberTile.dart';
import 'package:project_pheonix9/widgets/CurrentMealDetailwidget.dart/servingSizeTile.dart';
import 'package:project_pheonix9/widgets/CurrentMealDetailwidget.dart/titleCategoryTileWidget.dart';
import 'package:provider/provider.dart';

class CurrentMealDetailScreen extends StatelessWidget {
  static const String currentMealDetailScreen = '/c';
  @override
  Widget build(BuildContext context) {
    Meals mealDetail = ModalRoute.of(context).settings.arguments;
    final currentMealList = Provider.of<MealsData>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Title_CategoryTile(
              category: mealDetail.categories,
              title: mealDetail.mealName,
            ),
            //TODO This Container is servingNumber
            ServingNumberTile(
              servingNumber: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            //TODO This is Serving Size
            ServingSizeTile(
              servingSize: 2.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Calorie_MacroDescriptionTile(
                    carbs: mealDetail.carbs,
                    fats: mealDetail.fat,
                    protein: mealDetail.protein,
                    kcal: mealDetail.calories,
                  ),
                ),
                Expanded(
                  child: PercentageOfDailyGoalsTile(),
                ),
              ],
            ),
            
            GestureDetector(
              onTap: () async {
                 await currentMealList.removeMeals(mealDetail);
                  Navigator.of(context).pop();
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
                        'Remove',
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
