import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final Uri url;
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      String data = response.body;
      Map parsedData = jsonDecode(data);
      return parsedData;
    } else {
      print(response.statusCode);
    }
  }
}
