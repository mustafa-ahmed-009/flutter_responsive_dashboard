import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_section/income_section_main_widget.dart';
import 'package:responsive_dash_board/widgets/my_card_section/my_card_section_main_widget.dart';
import 'package:responsive_dash_board/widgets/transactions_history/transactions_histroy.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSectionMainWidget(),
        SizedBox(
          height: 24,
        ),
        TransactionsHistroy(),
        SizedBox(
          height: 24,
        ),
        IncomeSectionMainWidget()
      ],
    ));
  }
}
