
import 'package:flutter/material.dart';

class Calorie_MacroDescriptionTile extends StatelessWidget {
  const Calorie_MacroDescriptionTile({
    this.kcal,this.carbs, this.fats,this.protein,
  });
 @required final int kcal;
@required final int protein;
@required final int carbs;
@required final int fats;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: double.maxFinite,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
                spreadRadius: 3,
                offset: Offset(0, 3)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Calories:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    kcal.toString() + ' Kcal',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Proteins:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    protein.toString() + ' G',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Carbs:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    carbs.toString() + ' G',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fats:',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    fats.toString() + ' G',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
