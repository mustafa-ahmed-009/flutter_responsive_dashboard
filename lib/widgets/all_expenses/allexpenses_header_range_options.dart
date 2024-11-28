import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          "Monthly",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 18,
        ),
        const Icon(
          Icons.arrow_downward,
          color: Color(0xFF064060),
        ),
      ],
    );
  }
}
