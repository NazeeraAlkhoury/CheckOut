import 'package:checkout/core/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomTopScrollSheet extends StatelessWidget {
  const CustomTopScrollSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: AppDimensions.h5(context),
        width: AppDimensions.width(context) / 2.5,
        decoration: BoxDecoration(
          color: AppColors.lightGreyAccentColor,
          borderRadius: BorderRadius.circular(AppDimensions.h5(context)),
        ),
      ),
    );
  }
}
