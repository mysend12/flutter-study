import 'package:http/http.dart' as http;

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  final baseUrl = "https://pixabay.com/api/";
  final key = "22285008-d6c8194a38e38a3f7044551a4";

  Future<http.Response> fetch(String query) async {
    try {
      var parseQuery = Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo');
      return await http.get(parseQuery);
    } catch (e) {
      return http.Response("error", 500);
    }
  }

}