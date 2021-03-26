import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:project_pheonix9/widgets/FoodDatabaseResultsWidget/DismissableTile.dart';
import 'package:project_pheonix9/widgets/FoodDatabaseResultsWidget/SearchBarWidget.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'ResultDetailScreen.dart';

class FoodDatabaseResults extends StatelessWidget {
  static final String foodDatabaseSearchRoute = '/a';

  @override
  Widget build(BuildContext context) {
    final searchResults = Provider.of<FoodSearchResults>(context);
    var uuid = Uuid();
    var v1 = uuid.v1();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
              child: SafeArea(
          child: Column(
            children: [
              SearchBar(),
              //This is where the description of the page lies
              Padding(
                padding:
                    EdgeInsets.only(top: 14.0, left: 10, right: 10, bottom: 4),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Food Database Search Results",
                      style: TextStyle(fontSize: 20, color: Color(0xffB6B6B6)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 14.0, left: 10, right: 10, bottom: 4),
                child: ListView.builder(
                  shrinkWrap: true,
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: searchResults.searchedfood.length,
                  itemBuilder: (ctx, i) => GestureDetector(
                      onTap: () {
                        searchResults.searchedfood[i].id =
                            searchResults.searchedfood[i].title +
                                DateTime.now().toString() +
                                v1.toString();
                              
                        print(searchResults.searchedfood[i].id);
                        searchResults.searchedfood[i].mealTime =
                            ModalRoute.of(context).settings.arguments;
                        Navigator.pushNamed(
                            context, ResultDetailScreen.resultDetailScreen,
                            arguments: searchResults.searchedfood[i]);
                      },
                      child: DismissableTile(
                        mealTime: searchResults.searchedfood[i].mealTime =
                            ModalRoute.of(context).settings.arguments,
                        tileKey: v1,
                        carbs: searchResults.searchedfood[i].carbs,
                        protein: searchResults.searchedfood[i].protein,
                        category: searchResults.searchedfood[i].brandCategory,
                        fats: searchResults.searchedfood[i].fat,
                        foodTitle: searchResults.searchedfood[i].title,
                        kcals: searchResults.searchedfood[i].kcal,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
