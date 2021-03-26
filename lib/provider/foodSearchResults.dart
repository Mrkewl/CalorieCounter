import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:project_pheonix9/Models/foodSearch_Models.dart';

class FoodSearchResults with ChangeNotifier {
  String _datelog = DateFormat('dd MMM yyyy').format(DateTime.now());
  List<FoodSearchModel> _foodsearchList = [
 
  ];
// Food Database Api
// App Id
// a4128b93
// App Key
// 3fed29aefcf9a2a4c1fc53fd968d4002
// Recipe Api
// App Id
// b58c0156
// App Key
// 8c7db6ac495b4209cfbbd0b2fd354b11
  void clearSearch (){
    _foodsearchList.clear();
  }



  Future<void> testing(String query) async {

    const urlRecipe = 'api.edamam.com';
    const String appId = 'b58c0156';
    const String appKey = '8c7db6ac495b4209cfbbd0b2fd354b11';
    final Map<String, dynamic> httpQuery = {
      'q': query,
      'app_id': appId,
      'app_key': appKey,
    };
    final recipeResponse = await http.get(Uri.https(
      urlRecipe,
      'search',
      httpQuery,
    ));
    final recipeData = jsonDecode(recipeResponse.body);
    List recipesJson = recipeData['hits'].toList();
    print(recipesJson);
    
    recipesJson.forEach((recipe) => _foodsearchList.add(FoodSearchModel(
          servings: recipe['recipe']['yield'],
          title: recipe['recipe']['label'],
          brandCategory: recipe['recipe']['source'],
          carbs:
              recipe['recipe']['totalNutrients']['CHOCDF']['quantity'].round(),
          fat: recipe['recipe']['totalNutrients']['FAT']['quantity'].round(),
          kcal: recipe['recipe']['totalNutrients']['ENERC_KCAL']['quantity']
              .round(),
          protein:
              recipe['recipe']['totalNutrients']['PROCNT']['quantity'].round(),
             
        )));
      


    print(_foodsearchList.first.title);
    notifyListeners();

  }

  List<FoodSearchModel> get searchedfood {
    return _foodsearchList;
  }
  

  void changeDateLog (String changedDateLog){
    _datelog = changedDateLog;
    print(_datelog);
    notifyListeners();
  }

  String get getDateAdded{
    return _datelog;
  }
 

}
