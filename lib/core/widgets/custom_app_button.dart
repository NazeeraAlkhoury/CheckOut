import 'package:checkout/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class CusttomAppButton extends StatelessWidget {
  final void Function()? onPressed;
  const CusttomAppButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        textAlign: TextAlign.center,
        AppStrings.completePayment,
        style: AppStyles.textStyle19(context),
      ),
    );
  }
}
