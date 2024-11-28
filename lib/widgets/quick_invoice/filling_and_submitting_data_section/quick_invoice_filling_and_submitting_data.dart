import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/filling_and_submitting_data_section/filling_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/filling_and_submitting_data_section/row_of_button.dart';

class QuickInvoiceFillingAndSubmittingData extends StatelessWidget {
  const QuickInvoiceFillingAndSubmittingData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FillingForm(),
        SizedBox(
          height: 24,
        ),
        RowOfButtons()
      ],
    );
  }
}


