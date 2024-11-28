import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/cutsom_text_field.dart';

class TitleAndText extends StatelessWidget {
  const TitleAndText({
    super.key, required this.title, required this.hint,
  });
  final String title, hint; 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CutsomTextField(
          hintText:hint,
        ),
      ],
    );
  }
}
