import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/filling_and_submitting_data_section/quick_invoice_filling_and_submitting_data.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_latest_transactions.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        QuickInvoiceLatestTransactions(),
        Divider(
          height: 48,
        ),
        QuickInvoiceFillingAndSubmittingData(),
      ],
    ));
  }
}
