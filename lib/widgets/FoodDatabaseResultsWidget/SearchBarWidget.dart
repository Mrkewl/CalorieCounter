
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_pheonix9/provider/foodSearchResults.dart';
import 'package:provider/provider.dart';

import '../../constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    FoodSearchResults search =Provider.of<FoodSearchResults>(context);
  TextEditingController textinput;
  
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Color(0xff000000).withOpacity(0.16),
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color: Color(blue),
            size: 36,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: TextFormField(
                
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Search",
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none),
                    controller: textinput,
                    textInputAction: TextInputAction.go,
                    onFieldSubmitted: (textinput){
                        search.clearSearch();
                        search.testing(textinput);
                    },

              ),
            ),
          ),
        ],
      ),
    );
  }
}
