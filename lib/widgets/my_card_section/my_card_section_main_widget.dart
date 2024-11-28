import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/my_card_section/dots_indicator_row.dart';
import 'package:responsive_dash_board/widgets/my_card_section/my_page_view_builder.dart';

class MyCardSectionMainWidget extends StatefulWidget {
  const MyCardSectionMainWidget({super.key});

  @override
  State<MyCardSectionMainWidget> createState() =>
      _MyCardSectionMainWidgetState();
}

class _MyCardSectionMainWidgetState extends State<MyCardSectionMainWidget> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.toInt();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "My card ",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyPageViewBuilder(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicatorRow(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
