import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:project_pheonix9/widgets/CaloriePageWidgets/DismissableLoggedMealTile.dart';
import 'package:project_pheonix9/widgets/CaloriePageWidgets/MealTimeTile.dart';
import 'package:project_pheonix9/widgets/CaloriePageWidgets/StatsWidget.dart';
import 'package:project_pheonix9/widgets/CaloriePageWidgets/datetile.dart';
import 'package:provider/provider.dart';
import 'foodDatabaseResultsScreen.dart';

Size phoneSize;

class CaloriePage extends StatelessWidget {
  String breakfast = 'breakfast';

  String lunch = 'lunch';

  String dinner = 'dinner';

  @override
  Widget build(BuildContext context) {
    Provider.of<MealsData>(context, listen: false).getFoodLog();
    Size size = MediaQuery.of(context).size;
    phoneSize = size;

    return SingleChildScrollView(
      child: SafeArea(
        child: Consumer<MealsData>(
          builder: (context, _allmeals, _) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Consumer<FoodSearchResults>(
                builder: (context, searchtest, ch) =>
                    RaisedButton(onPressed: () {
                  // _allmeals.clear();
                  // _allmeals.printLog();
                  _allmeals.printFirst();
                  
                }),
              ),
              Container(
                color: Color(0xffffffff),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 20.0, top: 8.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Calorie Planner',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(
                          0xff2C2C2C,
                        ).withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
//This is the date display
              CalorieLogDatePicker(),
              //This is the title heading
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 24, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    StatsWidget(
                      heading: 'Total Calories',
                      stats: _allmeals.totalKcal.toString() + ' / 2400 Kcal',
                      percentage: _allmeals.totalKcal / 2400 * 150,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    // This is TOTAL PROTEINS
                    //TODO The PERCENTAGEa
                    StatsWidget(
                      heading: 'Total Proteins',
                      stats: _allmeals.totalProtein.toString() + ' / 200 g',
                      percentage: _allmeals.totalProtein / 200 * 150,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 24, top: 16, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //TODO STATS percentage is not right
                    StatsWidget(
                      heading: 'Total Carbs',
                      stats: _allmeals.totalCarbs.toString() + ' / 400 g',
                      percentage: _allmeals.totalCarbs / 400 * 150,
                    ),
                    SizedBox(
                      width: 24,
                    ),

                    // This is TOTAL PROTEINS
                    StatsWidget(
                      heading: 'Total Fats',
                      stats: _allmeals.totalFats.toString() + ' / 400 g',
                      percentage: _allmeals.totalFats / 400 * 150,
                    ),
                  ],
                ),
              ),

              //This is Breakfast area // TODO: Take note
              MealTimeTile(
                day: 'Breakfast',
                addMeals: () {
                  String mealTime = breakfast;
                  Navigator.pushNamed(
                      context, FoodDatabaseResults.foodDatabaseSearchRoute,
                      arguments: mealTime);
                  //Put the provider here
                },
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, i) => DismissableLoggedMealTile(
                  meal: _allmeals.breakfastList[i],
                ),
                itemCount: _allmeals.breakfastList.length,
              ),
              //This is lunch Area
              MealTimeTile(
                day: "Lunch",
                addMeals: () {
                  String mealTime = lunch;
                  Navigator.pushNamed(
                      context, FoodDatabaseResults.foodDatabaseSearchRoute,
                      arguments: mealTime);
                  //Put the provider here
                },
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, i) => DismissableLoggedMealTile(
                  meal: _allmeals.lunchList[i],
                ),
                itemCount: _allmeals.lunchList.length,
              ),
              //This is dinner Area
              MealTimeTile(
                day: "Dinner",
                addMeals: () {
                  String mealTime = dinner;
                  Navigator.pushNamed(
                      context, FoodDatabaseResults.foodDatabaseSearchRoute,
                      arguments: mealTime);
                  //Put the provider here
                },
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, i) => DismissableLoggedMealTile(
                  meal: _allmeals.dinnerList[i],
                ),
                itemCount: _allmeals.dinnerList.length,
              ),
              //This is the Calories stats
            ],
          ),
        ),
      ),
    );
  }
}

// ...meals.mealsData.map((e) => Text(e.mealName)).toList(),
