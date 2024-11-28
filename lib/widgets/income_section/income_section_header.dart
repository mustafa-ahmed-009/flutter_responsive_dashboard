import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleBold16(context).copyWith(
            color: const Color(0xff064061),
          ),
        ),
        Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleRegular16(context).copyWith(
                color: const Color(0xff064061),
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            const Icon(
              Icons.arrow_downward,
              color: Color(0xff064061),
            )
          ],
        )
      ],
    );
  }
}
