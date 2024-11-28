import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/all_expenses_item_models_data.dart';
import 'package:responsive_dash_board/widgets/all_expenses/allexpenses_body_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  _AllExpensesListViewState createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItemModelList.asMap().entries.map((e) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = e.key;
                });
              },
              child: AllexpensesBodyItem(
                IsActive: activeIndex == e.key,
                allExpensesItemModel: allExpensesItemModelList[e.key],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
