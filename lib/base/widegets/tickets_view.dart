import 'package:flutter/material.dart';
import 'package:my_first_app/base/res/styles/app_styles.dart';
import 'package:my_first_app/base/widegets/app_layoutbuilder_widget.dart';
import 'package:my_first_app/base/widegets/big_circle.dart';
import 'package:my_first_app/base/widegets/big_dot.dart';

class TicketsView extends StatelessWidget {
final bool wholeScreen;
  const TicketsView({super.key,  this.wholeScreen=false, required Map<String, dynamic> ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.82,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: AppStyles.ticketblue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                          
                        ),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Transform.rotate(
                              angle: 1.5,
                              child: Center(
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: AppStyles.normalheading3.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),

                      Text(
                        "8H 30M",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        
                        child: Text(
                          textAlign: TextAlign.end,
                          "London",
                          style: AppStyles.normalheading3.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              color: AppStyles.ticketsorange,
              child: Row(
                children: [
                  BigCircle(isRight: false,),
                  Expanded(child: Container()),
                  BigCircle(isRight: true,),
                  
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: AppStyles.ticketsorange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      
                      Text(
                        "08: 00 AM",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "date",
                          style: AppStyles.normalheading3.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),

                      Text(
                        "Departure Time",
                        style: AppStyles.normalheading3.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Number",
                          style: AppStyles.normalheading3.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
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
