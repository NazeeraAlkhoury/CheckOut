import 'package:checkout/core/utils/app_dimensions.dart';
import 'package:checkout/features/presentaion/views/widgets/payment_gateway_sheet/custom_payment_gateway.dart';
import 'package:checkout/features/presentaion/views/widgets/payment_gateway_sheet/custom_title_sheet.dart';
import 'package:checkout/features/presentaion/views/widgets/payment_gateway_sheet/custom_top_scroll_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomPaymentSheet extends StatelessWidget {
  const CustomPaymentSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppDimensions.r20(context)),
          topRight: Radius.circular(AppDimensions.r20(context)),
        ),
      ),
      height: AppDimensions.height(context) / 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.p15(context),
            vertical: AppDimensions.p5(context)),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: CustomTopScrollSheet(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: AppDimensions.p15(context)),
              sliver: const SliverToBoxAdapter(
                child: CustomTitleSheet(),
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: CustomPaymentGateway(),
            ),
          ],
        ),
      ),
    );
  }
}
