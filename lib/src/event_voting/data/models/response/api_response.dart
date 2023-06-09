import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  const ApiResponse({
    required this.success,
    required this.data,
    required this.message,
  });

  final bool success;
  final String? message;
  final T data;

  @override
  List<Object?> get props => [success, message, data];
}
