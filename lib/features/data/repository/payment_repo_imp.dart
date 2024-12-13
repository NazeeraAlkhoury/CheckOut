import 'package:checkout/core/services/stripe_service.dart';
import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:checkout/features/data/repository/payment_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/errors/failure.dart';

class PaymentRepositoryImp implements PaymentRepository {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failures, void>> stripePayment(
      PaymentIntentInputModel paymentIntentInputModel) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
