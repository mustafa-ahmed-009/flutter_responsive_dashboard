import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/allexpenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses/allexpenses_body_item_header.dart';

class AllexpensesBodyItem extends StatelessWidget {
  const AllexpensesBodyItem(
      {super.key, required this.allExpensesItemModel, required this.IsActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool IsActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: IsActive ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllexpensesBodyItemHeader(
              image: allExpensesItemModel.image,
              isActive: IsActive,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpensesItemModel.title,
              style: IsActive
                  ? AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allExpensesItemModel.date,
              style: IsActive
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allExpensesItemModel.price,
              style: IsActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
