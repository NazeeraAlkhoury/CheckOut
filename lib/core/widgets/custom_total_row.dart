import 'package:checkout/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class CustomTotalRow extends StatelessWidget {
  final String val;
  const CustomTotalRow({
    super.key,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.total,
          style: AppStyles.textStyle21(context),
        ),
        const Spacer(),
        Text(
          val,
          style: AppStyles.textStyle21(context),
        ),
      ],
    );
  }
}
