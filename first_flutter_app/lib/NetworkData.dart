import 'package:http/http.dart' as http;

class NetworkData {
  Future<http.Response> fetchList() async {
    final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
    print("Output data" + response.body);
    return response;
  }
}
