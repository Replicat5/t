
import 'package:http/http.dart' as http;

class ApiDoc {
  Future getInfo() async {
    const String _url = 'https://reqres.in/api/users?page=2';
    final response = await http.get(_url);
    return response.body;
  }
}