import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CutsomTextField extends StatelessWidget {
  const CutsomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Type",
        hintStyle: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        border: border(),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),
    );
  }
}
