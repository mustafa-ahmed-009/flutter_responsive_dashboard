import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetlaisAndExpenses extends StatelessWidget {
  const DetlaisAndExpenses(
      {super.key,
      required this.title,
      required this.expenses,
      required this.date});
  final String title, expenses, date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.styleSemiBold16(context),
            ),
            Text(
              date,
              style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
            ),
          ],
        ),
        Text(
          expenses,
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xffF3735E)),
        )
      ],
    );
  }
}
