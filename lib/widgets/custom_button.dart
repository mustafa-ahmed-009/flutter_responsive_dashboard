import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor});
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: buttonColor,
        ),
        onPressed: () {},
        child: Text(buttonText,
            style: AppStyles.styleSemiBold18(context).copyWith(color: textColor)),
      ),
    );
  }
}
