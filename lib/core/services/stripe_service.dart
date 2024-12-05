import 'package:checkout/core/network/api_endpoints.dart';
import 'package:checkout/core/network/api_service.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
}
