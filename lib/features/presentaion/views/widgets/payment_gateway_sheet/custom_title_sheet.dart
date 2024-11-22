import 'package:checkout/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';

class CustomTitleSheet extends StatelessWidget {
  const CustomTitleSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.choosePaymentMethod,
      style: AppStyles.textStyle15(context),
    );
  }
}
