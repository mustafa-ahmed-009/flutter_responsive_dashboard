import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllexpensesBodyItemHeader extends StatelessWidget {
  const AllexpensesBodyItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(14),
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: isActive
                  ? const Color(0xff4EB7F2)
                  : Colors.white.withOpacity(0.1),
            ),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  isActive ? Colors.white : const Color(0xff4EB7F2),
                  BlendMode.srcIn),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive ? Colors.white : const Color(0xFF064060),
        ),
      ],
    );
  }
}
