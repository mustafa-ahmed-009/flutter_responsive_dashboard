import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/quick_invoice_latest_transactions_model_data.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class QuickInvoiceLatestTransactionsListView extends StatelessWidget {
  const QuickInvoiceLatestTransactionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: quickInvoiceListData.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
                image: quickInvoiceListData[index].image,
                title: quickInvoiceListData[index].title,
                subTitle: quickInvoiceListData[index].subTitle),
          );
        },
      ),
    );
  }
}
