import 'package:checkout/core/utils/app_dimensions.dart';
import 'package:checkout/features/presentaion/views/widgets/payment_gateway_sheet/custom_payment_gateway_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/payment_gateway_list.dart';

class CustomPaymentGateway extends StatelessWidget {
  const CustomPaymentGateway({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: AppDimensions.w14(context),
        children: [
          ...List.generate(
            paymentGatewayList.length,
            (index) => CustomPaymentGatewayItem(
              paymentItemModel: paymentGatewayList[index],
            ),
          ),
        ],
      ),
    );
  }
}
