import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses/all_expenses_widget.dart';
import 'package:responsive_dash_board/widgets/cutsom_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_main_widget.dart';
import 'package:responsive_dash_board/widgets/third_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        AllExpnesesWidget(),
                        SizedBox(
                          height: 24,
                        ),
                        QuickInvoice(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(child: ThirdSection()),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
