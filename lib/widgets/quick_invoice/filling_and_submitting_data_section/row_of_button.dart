import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

class RowOfButtons extends StatelessWidget {
  const RowOfButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            buttonText: "Add more details ",
            buttonColor: Colors.white,
            textColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(
            buttonText: "Send money",
            buttonColor: Color(0xff4EB7F2),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
