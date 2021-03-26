import 'package:flutter/material.dart';

import '../../constant.dart';

class MealTimeTile extends StatelessWidget {
  const MealTimeTile({this.day, this.addMeals});
  final Function addMeals;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Text(
                    day,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(darkBlue).withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(360),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(0, 4)),
                ],
              ),
              child: GestureDetector(
                onTap: addMeals,
                  child: Icon(
                Icons.add,
                size: 30,
                color: Color(blue),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
