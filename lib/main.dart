import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_pheonix9/provider/MealTimeMealList.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:project_pheonix9/screens/CaloriePage_overviewScreen.dart';
import 'package:project_pheonix9/screens/CurrentMealDetailScreen.dart';
import 'package:project_pheonix9/screens/ResultDetailScreen.dart';
import 'package:project_pheonix9/screens/foodDatabaseResultsScreen.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Models/MealsClass.dart';



void main()  {
  //  await WidgetsFlutterBinding.ensureInitialized();
  // Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  // await Hive.initFlutter();
  // Hive.registerAdapter(MealsAdapter());
  // var box = await Hive.openBox<Meals>('testObject');
  // await box.add(Meals(breakfast: true,calories: 100,carbs: 100,dinner:true,fat: 100,id: '21312',lunch: true,mealName: 'dasdas',protein: 100,categories: 'dasd'));
    // await box.add(Meals(breakfast: true,calories: 100,carbs: 100,dinner:true,fat: 100,id: '21312',lunch: true,mealName: 'Jazzjazz',protein: 100,categories: 'dasd'));
// box.clear();
  // var issatest = await box.values;
  // print(issatest.elementAt(4).mealName);
  runApp(CalorieCounter());
}

Future _initHive() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory dir = await pathProvider.getApplicationDocumentsDirectory();
 await  Hive.initFlutter(dir.path);
  Hive.registerAdapter(MealsAdapter());
  // var box = await Hive.openBox<Meals>("foodLog");
  // box.clear();
  
}

class CalorieCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MealsData>(
          create: (_) => MealsData(),
        ),
        ChangeNotifierProvider<FoodSearchResults>(
          create: (_) => FoodSearchResults(),
        ),
      ],
      child: MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white,
            body: FutureBuilder(
                future: _initHive(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.error != null) {
                      print(snapshot.error);
                      return Scaffold(
                        body: Center(
                          child: Text('Error initializing hive data store.'),
                        ),
                      );
                    } else {
                       
                      return CaloriePage();
                    }
                  }
                  else {
                    return Scaffold();
                  }
                }

                //  CaloriePage()
                ),
          ),
          routes: <String, WidgetBuilder>{
            FoodDatabaseResults.foodDatabaseSearchRoute: (ctx) =>
                FoodDatabaseResults(),
            ResultDetailScreen.resultDetailScreen: (ctx) =>
                ResultDetailScreen(),
            CurrentMealDetailScreen.currentMealDetailScreen: (ctx) =>
                CurrentMealDetailScreen(),
          }),
    );
  }
}
