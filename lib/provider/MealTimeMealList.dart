import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:project_pheonix9/Models/MealsClass.dart';

class MealsData with ChangeNotifier {
 final String _boxName = 'foodLog1';

  int breakfastLength = 0;
  int lunchLength = 0;
  int dinnerLength = 0;
  List<Meals> _mealsData = [];
  String datelog = DateFormat('dd MMM yyyy').format(DateTime.now());


  void getFoodLog() async {
    var box = await Hive.openBox<Meals>(_boxName);
    _mealsData = box.values.toList();
    box.close();


    notifyListeners();
  }

 

  void printLog()async {
    var box =await  Hive.openBox<Meals>(_boxName);
  await  box.clear();
   _mealsData = box.values.toList();
  notifyListeners();
  }

  List get mealsData {
    return _mealsData;
  }
    String get mealsDataTest {
    return _mealsData.first.dateAdded;
  }


  List get breakfastList {

List<Meals> breakfast = [];   
      for (Meals meal in _mealsData) {
      if (meal.breakfast == true  && meal.dateAdded == datelog) {
        breakfast.add(meal);
      }
    }
 
    
    return breakfast;
  }

 void printFirst(){
   print(_mealsData.first.dateAdded);
   print(datelog);
 }

   

  

  List get lunchList {
    List lunch = [];
    for (Meals meal in _mealsData) {
      if (meal.lunch == true && meal.dateAdded == datelog) {
        lunch.add(meal);
      }
    }
    return lunch;
  }

  List get dinnerList {
    List dinner = [];
    for (Meals meal in _mealsData ) {
      if (meal.dinner == true && meal.dateAdded == datelog) {
        dinner.add(meal);
      }
    }
    return dinner;
  }

  int get totalKcal {
    int totalKcalcounted = 0;
    for (Meals meal in _mealsData) {
      totalKcalcounted = totalKcalcounted + meal.calories;
    }
    return totalKcalcounted;
  }

  int get totalProtein {
    int totalProteincounted = 0;
    for (Meals meal in _mealsData) {
      totalProteincounted = totalProteincounted + meal.protein;
    }
    return totalProteincounted;
  }

  int get totalCarbs {
    int totalCarbscounted = 0;
    for (Meals meal in _mealsData) {
      totalCarbscounted = totalCarbscounted + meal.carbs;
    }
    return totalCarbscounted;
  }

  int get totalFats {
    int totalFatscounted = 0;
    for (Meals meal in _mealsData) {
      totalFatscounted = totalFatscounted + meal.carbs;
    }
    return totalFatscounted;
  }

  void addMeals(Meals meal) async {
    var box = await Hive.openBox<Meals>(_boxName);
      await box.add(meal);
       _mealsData = box.values.toList();
    notifyListeners();
  }

  void removeMeals(Meals meal) async {
    
    var box = await Hive.openBox<Meals>(_boxName);
    box.values.firstWhere((element) => element.id == meal.id).delete();
    _mealsData.removeWhere((element) => element.id == meal.id);
    notifyListeners();
  }

    void changeDateLog (String changedDateLog){
    datelog = changedDateLog;
    notifyListeners();
  }


}
