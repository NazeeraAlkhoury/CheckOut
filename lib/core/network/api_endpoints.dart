import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiEndpoints {
  //Base url

  static String baseUrl = dotenv.get('STRIPE_BASE_URL');

  //Endpoints
  static String createPaymentIntent = '$baseUrl/payment_intents';
}
