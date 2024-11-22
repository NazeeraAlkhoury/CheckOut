import 'package:flutter/material.dart';

import '../../../../../core/utils/app_image_assets.dart';

class CustomSalaImage extends StatelessWidget {
  const CustomSalaImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        AppImageAssets.imageSala,
      ),
    );
  }
}
