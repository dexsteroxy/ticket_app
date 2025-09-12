import 'package:flutter/material.dart';
import 'package:my_first_app/base/res/styles/app_styles.dart';
import 'package:my_first_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.func
  });

  final String bigText;
  final String smallText;

  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(bigText, style: AppStyles.normalheading3,
    ),
    InkWell(
      onTap: func,
      child: Text(smallText, style:AppStyles.textStyle.copyWith(
        color: AppStyles.primaryColor
      ),),
    )
    ],
    );
  }
}
