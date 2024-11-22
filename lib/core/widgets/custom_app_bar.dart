import 'package:checkout/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_icon_assets.dart';

AppBar customAppBar({
  required BuildContext context,
  String? title,
  void Function()? onTap,
}) {
  return AppBar(
    titleTextStyle: AppStyles.textStyle22(context),
    leading: GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppIconAssets.iconArrowBack,
        fit: BoxFit.scaleDown,
      ),
    ),
    title: title != null ? Text(title) : null,
  );
}
