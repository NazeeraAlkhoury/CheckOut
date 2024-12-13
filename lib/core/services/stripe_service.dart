import 'package:checkout/core/network/api_endpoints.dart';
import 'package:checkout/core/network/api_service.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  ApiServices apiServices = ApiServices();

  // Create a PaymentIntent
  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    final response = await apiServices.postData(
      url: ApiEndpoints.createPaymentIntent,
      data: paymentIntentInputModel.toJson(),
      token: dotenv.env['STRIPE_SECERT_KEY']!,
      contentType: Headers.formUrlEncodedContentType,
    );
    PaymentIntentModel paymentIntentModel =
        PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  //craete initPaymentSheet method
  Future<void> initPaymentSheet({
    required String paymentIntentClientSecret,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Nazeera Alkhouri',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  //Create displayPaymentSheet
  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  //Create MakePayment method
  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var paymentIntentModel = await createPaymentIntent(
      paymentIntentInputModel: paymentIntentInputModel,
    );
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret);
    await displayPaymentSheet();
  }
}
