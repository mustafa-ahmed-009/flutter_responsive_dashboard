import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses/allexpenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses/allexpenses_list_view.dart';

class AllExpnesesWidget extends StatefulWidget {
  const AllExpnesesWidget({super.key});

  @override
  State<AllExpnesesWidget> createState() => _AllExpnesesWidgetState();
}

class _AllExpnesesWidgetState extends State<AllExpnesesWidget> {
  int activeIndex = 0;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllexpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesListView()
        ],
      ),
    );
  }
}
