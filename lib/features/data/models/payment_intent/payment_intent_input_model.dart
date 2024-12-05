import 'package:equatable/equatable.dart';

class PaymentIntentInputModel extends Equatable {
  final String amount, currency;

  const PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currency': currency,
      };

  @override
  List<Object?> get props => [amount, currency];
}
