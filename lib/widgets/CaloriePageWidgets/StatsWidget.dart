import 'package:flutter/material.dart';
import 'package:project_pheonix9/screens/CaloriePage_overviewScreen.dart';

import '../../constant.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget(
      {@required this.heading,
        @required this.percentage,
        @required this.stats});

  final String heading;
  final String stats;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //This is TOTAL calories stats
        Text(
          heading,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(
              0xff2C2C2C,
            ).withOpacity(0.5),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          stats,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color(
              0xff2C2C2C,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: phoneSize.width * 0.32,
          height: 12,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
                spreadRadius: 3,
                  offset: Offset(1, 4)
              ),
            ],
            color: Color(blue),
            borderRadius: BorderRadius.all(Radius.circular(360)),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                      spreadRadius: 3,
                      offset: Offset(1, 4)
                    ),
                  ],
                  color: Color(darkBlue),
                  borderRadius: BorderRadius.all(Radius.circular(360)),
                ),
                width: percentage ,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
