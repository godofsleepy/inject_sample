import 'package:inject_sample/api.dart';
import 'package:injectable/injectable.dart';

abstract class ExampleRepository {
  void example();
}

@LazySingleton(as: ExampleRepository)
class ExampleRepositoryImpl implements ExampleRepository {
  final ApiService _service;

  ExampleRepositoryImpl({
    required ApiService service,
  }) : _service = service;

  @override
  void example() {
    _service.example();
  }
}
