import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transactions_history/detlais_and_expenses.dart';

class TransactionsHistroy extends StatelessWidget {
  const TransactionsHistroy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              "See all ",
              style: AppStyles.styleMedium16(context),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 Apr 2022",
          style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        const DetlaisAndExpenses(
            title: "Cash Withdrawal ",
            expenses: r"$20,129",
            date: "13 Apr 2022"),
        const SizedBox(
          height: 12,
        ),
        const DetlaisAndExpenses(
            title: "Cash Withdrawal ",
            expenses: r"$20,129",
            date: "13 Apr 2022"),
        const SizedBox(
          height: 12,
        ),
        const DetlaisAndExpenses(
            title: "Cash Withdrawal ",
            expenses: r"$20,129",
            date: "13 Apr 2022"),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
