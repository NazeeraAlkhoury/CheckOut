import 'package:checkout/core/services/stripe_service.dart';
import 'package:checkout/core/utils/app_strings.dart';
import 'package:checkout/core/utils/app_theme.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:checkout/features/data/repository/payment_repo.dart';
import 'package:checkout/features/data/repository/payment_repo_imp.dart';
import 'package:checkout/features/presentaion/manager/payment/payment_cubit.dart';
import 'package:checkout/features/presentaion/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");

  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;
  StripeService stripeService = StripeService();
  await stripeService.makePayment(
    paymentIntentInputModel: const PaymentIntentInputModel(
      amount: '200',
      currency: 'usd',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PaymentRepository paymentRepository = PaymentRepositoryImp();
    return MaterialApp(
      title: AppStrings.appName,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          lazy: false,
          create: (context) => PaymentCubit(
                paymentRepository,
                const PaymentIntentInputModel(
                  amount: '200',
                  currency: 'usd',
                ),
              ),
          child: const MyCartScreen()),
    );
  }
}
