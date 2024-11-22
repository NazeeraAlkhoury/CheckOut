import 'package:checkout/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomSubTotalRow extends StatelessWidget {
  final String text, val;
  const CustomSubTotalRow({
    super.key,
    required this.text,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.textStyle15(context),
        ),
        const Spacer(),
        Text(
          val,
          style: AppStyles.textStyle15(context),
        ),
      ],
    );
  }
}
