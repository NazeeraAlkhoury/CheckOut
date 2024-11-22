import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/utils/app_lotties_assets.dart';
import '../../../core/widgets/custom_app_bar.dart';

class PaymentSucessScreen extends StatelessWidget {
  const PaymentSucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        onTap: () {},
        context: context,
      ),
      body: Center(
        child: Lottie.asset(AppLottiesAssets.lottiePaymentSuccess),
      ),
    );
  }
}
