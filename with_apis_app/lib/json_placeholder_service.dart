import 'package:dio/dio.dart';
import 'package:with_apis_app/todo_models.dart';

class JsonPlaceHolderService {
  final url = 'https://jsonplaceholder.typicode.com/todos';
  final dio = new Dio();

  Future<List<TodoModel>> getTodos() async {
    final response = await dio.get(url);
    final body = response.data as List;
    
    final todos = body.
      map((todo) => TodoModel(
        userId: todo['userId'],
        id: todo['id'],
        title: todo['title'],
        completed: todo['completed'])
        )
      .toList();
    return todos;
  }
}
