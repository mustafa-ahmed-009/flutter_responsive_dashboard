import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card_section/custom_dot_indicator.dart';

class DotsIndicatorRow extends StatelessWidget {
  const DotsIndicatorRow({super.key, required  this.currentPageIndex});
  final int currentPageIndex; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        );
      }),
    );
  }
}
