





import 'package:flutter/material.dart';

import '../../constant.dart';

class PercentageOfDailyGoalsTile extends StatelessWidget {
  const PercentageOfDailyGoalsTile({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
                spreadRadius: 3,
                offset: Offset(0, 3))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Percent Of Daily Goals:',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            //TODO This is the KCALS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Calories: ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '13%',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              width: double.infinity * 0.32,
              height: 12,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(1, 4)),
                ],
                color: Color(blue),
                borderRadius:
                    BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset: Offset(1, 4)),
                      ],
                      color: Color(darkBlue),
                      borderRadius:
                          BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO This is the Protein
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Protein: ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '13%',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              width: double.infinity * 0.32,
              height: 12,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(1, 4)),
                ],
                color: Color(blue),
                borderRadius:
                    BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset: Offset(1, 4)),
                      ],
                      color: Color(darkBlue),
                      borderRadius:
                          BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO This is the Carbs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Carbs: ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '13%',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              width: double.infinity * 0.32,
              height: 12,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(1, 4)),
                ],
                color: Color(blue),
                borderRadius:
                    BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset: Offset(1, 4)),
                      ],
                      color: Color(darkBlue),
                      borderRadius:
                          BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO THIS IS THE FATS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fats: ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '13%',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              width: double.infinity * 0.32,
              height: 12,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(1, 4)),
                ],
                color: Color(blue),
                borderRadius:
                    BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset: Offset(1, 4)),
                      ],
                      color: Color(darkBlue),
                      borderRadius:
                          BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
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
