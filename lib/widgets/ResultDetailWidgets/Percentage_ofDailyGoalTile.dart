





import 'package:flutter/material.dart';

import '../../constant.dart';

class PercentageOfDailyGoalsTile extends StatelessWidget {
  // const PercentageOfDailyGoalsTile({
  //   Key key,
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin:const EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color:const Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
                spreadRadius: 3,
                offset:const Offset(0, 3))
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
          const  Text(
              'Percent Of Daily Goals:',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
        const    SizedBox(
              height: 5,
            ),
            //TODO This is the KCALS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
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
                      color: const Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: const Offset(1, 4)),
                ],
                color: const Color(blue),
                borderRadius:
                    const BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset:const Offset(1, 4)),
                      ],
                      color:const Color(darkBlue),
                      borderRadius:
                         const BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO This is the Protein
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
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
                      color: const Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: const Offset(1, 4)),
                ],
                color: const Color(blue),
                borderRadius:
                    const BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset: const Offset(1, 4)),
                      ],
                      color:const Color(darkBlue),
                      borderRadius:
                         const BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO This is the Carbs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text(
                  'Carbs: ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '13%',
                  style:  TextStyle(
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
                      color:const Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset:const Offset(1, 4)),
                ],
                color:const Color(blue),
                borderRadius:
                  const  BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color:const Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset:const Offset(1, 4)),
                      ],
                      color:const Color(darkBlue),
                      borderRadius:
                         const BorderRadius.all(Radius.circular(360)),
                    ),
                    width: 50,
                  ),
                ],
              ),
            ),
            //TODO THIS IS THE FATS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
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
                      color:const Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset:const Offset(1, 4)),
                ],
                color:const Color(blue),
                borderRadius:
                   const BorderRadius.all(Radius.circular(360)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000)
                                .withOpacity(0.16),
                            blurRadius: 6,
                            spreadRadius: 3,
                            offset:const Offset(1, 4)),
                      ],
                      color:const Color(darkBlue),
                      borderRadius:
                         const BorderRadius.all(Radius.circular(360)),
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
