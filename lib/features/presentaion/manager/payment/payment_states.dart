abstract class PaymentState {}

class PaymentInitialState extends PaymentState {}

class PaymentLoadingState extends PaymentState {}

class PaymentSuccessState extends PaymentState {}

class PaymentFailureState extends PaymentState {
  final String errorMessage;

  PaymentFailureState({required this.errorMessage});
}
