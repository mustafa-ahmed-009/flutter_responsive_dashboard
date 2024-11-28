import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section/chart_sectoin.dart';
import 'package:responsive_dash_board/widgets/income_section/income_details.dart';

import 'income_section_header.dart';

class IncomeSectionMainWidget extends StatelessWidget {
  const IncomeSectionMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IncomeSectionHeader(),
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 150,
                child: AspectRatio(aspectRatio: 1, child: IncomeChart())),
            Expanded(child: IncomeDetails())
          ],
        )
      ],
    );
  }
}
