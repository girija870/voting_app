import 'package:equatable/equatable.dart';

class EventParams extends Equatable {
  const EventParams({
    required this.type,
    this.search,
  });
  final String type;
  final String? search;
  @override
  List<Object?> get props => [type, search];
}
