import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_latest_transactions_list_view.dart';

class QuickInvoiceLatestTransactions extends StatelessWidget {
  const QuickInvoiceLatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [QuickInvoiceLatestTransactionsListView()],
    );
  }
}
