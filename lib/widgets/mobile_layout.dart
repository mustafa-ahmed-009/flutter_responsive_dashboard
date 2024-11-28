import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses/all_expenses_widget.dart';
import 'package:responsive_dash_board/widgets/income_section/income_section_main_widget.dart';
import 'package:responsive_dash_board/widgets/my_card_section/my_card_section_main_widget.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_main_widget.dart';
import 'package:responsive_dash_board/widgets/third_section.dart';
import 'package:responsive_dash_board/widgets/transactions_history/transactions_histroy.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpnesesWidget(),
            SizedBox(
              height: 24,
            ),
            QuickInvoice(),
            SizedBox(
              height: 18,
            ),
ThirdSection() , 
          ],
        ),
      ),
    );
  }
}
