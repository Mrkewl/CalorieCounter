import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// part 'foodSearch_Model.g.dart';


// This class is for the search results
class FoodSearchModel {
  FoodSearchModel(
      {@required this.title,
      @required this.brandCategory,
      @required this.fat,
      @required this.kcal,
      @required this.protein,
      @required this.carbs,
      this.id,
      this.mealTime,
      this.servings,
      this.dateAdded });
   String id;
   String title;
   String brandCategory;
   int kcal;
   int protein;
   int fat;
   int carbs;
   String mealTime;
    double servings;
    String dateAdded;

// factory FoodSearchModel.fromJson(Map<String, dynamic> json) => _$FoodSearchModelFromJson(json);
//   Map<String, dynamic> toJson() => _$FoodSearchModelToJson(this);
}

