import 'package:checkout/core/utils/app_dimensions.dart';
import 'package:checkout/features/presentaion/views/widgets/my_cart/custom_sub_total_row.dart';
import 'package:checkout/features/presentaion/views/widgets/payment_gateway_sheet/custom_payment_sheet.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_app_button.dart';
import '../../../core/widgets/custom_total_row.dart';
import 'widgets/my_cart/custom_sala_image.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: AppStrings.myCart, context: context),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.p20(context)),
        child: Column(
          children: [
            const CustomSalaImage(),
            const CustomSubTotalRow(
              text: AppStrings.orderSubtotal,
              val: r'$42.97',
            ),
            SizedBox(height: AppDimensions.h5(context)),
            const CustomSubTotalRow(
              text: AppStrings.discount,
              val: r'$0',
            ),
            SizedBox(height: AppDimensions.h5(context)),
            const CustomSubTotalRow(
              text: AppStrings.shipping,
              val: r'$8',
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppDimensions.p10(context)),
              child: const Divider(),
            ),
            const CustomTotalRow(val: r'$50.97'),
            SizedBox(height: AppDimensions.h25(context)),
            CusttomAppButton(onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CustomPaymentSheet(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
