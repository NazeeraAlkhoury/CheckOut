import 'package:checkout/core/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../data/models/payment_item_model.dart';

class CustomPaymentGatewayItem extends StatelessWidget {
  final PaymentItemModel paymentItemModel;
  const CustomPaymentGatewayItem({
    super.key,
    required this.paymentItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 100,
        margin: EdgeInsets.only(bottom: AppDimensions.p15(context)),
        decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.greenOutlineColor.withOpacity(.3)),
          borderRadius: BorderRadius.circular(
            AppDimensions.r10(context),
          ),
        ),
        child: SvgPicture.asset(
          paymentItemModel.icon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
