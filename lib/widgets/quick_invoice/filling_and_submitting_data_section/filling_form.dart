import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/filling_and_submitting_data_section/title_and_text_field.dart';

class FillingForm extends StatelessWidget {
  const FillingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [
          Expanded(
            child: TitleAndText(
              title: "Customer Name ",
              hint: "Enter your Next Name ",
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleAndText(
              title: "Customer Name ",
              hint: "Enter your Next Name ",
            ),
          ),
        ]),
        Row(children: [
          Expanded(
            child: TitleAndText(
              title: "Customer Name ",
              hint: "Enter your Next Name ",
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleAndText(
              title: "Customer Name ",
              hint: "Enter your Next Name ",
            ),
          ),
        ]),
      ],
    );
  }
}
