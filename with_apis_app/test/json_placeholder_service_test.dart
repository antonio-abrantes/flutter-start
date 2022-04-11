import 'package:flutter_test/flutter_test.dart';
import 'package:with_apis_app/json_placeholder_service.dart';

void main() {
  test('Deve retornar todos os todos', () async {
    final service = new JsonPlaceHolderService();
    final todos = await service.getTodos();
    print(todos[0]);
  });
}