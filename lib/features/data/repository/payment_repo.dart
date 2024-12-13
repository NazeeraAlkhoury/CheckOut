import 'package:checkout/core/errors/failure.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class PaymentRepository {
  Future<Either<Failures, void>> stripePayment(
      PaymentIntentInputModel paymentIntentInputModel);
}
