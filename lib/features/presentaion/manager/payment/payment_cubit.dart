import 'package:checkout/features/data/models/payment_intent/payment_intent_input_model.dart';
import 'package:checkout/features/data/repository/payment_repo.dart';
import 'package:checkout/features/presentaion/manager/payment/payment_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepository paymentRepository;
  final PaymentIntentInputModel paymentIntentInputModel;
  PaymentCubit(this.paymentRepository, this.paymentIntentInputModel)
      : super(PaymentInitialState());

  Future<void> stripePayment() async {
    var result = await paymentRepository.stripePayment(paymentIntentInputModel);
    return result.fold(
        (failure) =>
            emit(PaymentFailureState(errorMessage: failure.errorMessage)),
        (sucess) => emit(PaymentSuccessState()));
  }
}
