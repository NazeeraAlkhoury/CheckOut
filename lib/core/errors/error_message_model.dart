import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final ErrorMessageModel error;

  const ErrorModel({required this.error});

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        error: ErrorMessageModel.fromJson(json['error']),
      );

  @override
  List<Object?> get props => [error];
}

class ErrorMessageModel extends Equatable {
  final String message, type;

  const ErrorMessageModel({required this.message, required this.type});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
          message: json['message'] as String, type: json['type'] as String);

  @override
  List<Object?> get props => [
        message,
        type,
      ];
}
