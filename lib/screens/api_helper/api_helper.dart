// import 'dart:convert';
//
// import 'package:http/http.dart';
// import 'package:http/http.dart' as http;
//
// class ApiHelper {
//   String api1 =
//       'https://newsapi.org/v2/everything?q=apple&from=2024-08-19&to=2024-08-19&sortBy=popularity&apiKey=733a889b0b894265b337b8ca84b2e8e6';
//   String api2 =
//       'https://newsapi.org/v2/everything?q=tesla&from=2024-07-20&sortBy=publishedAt&apiKey=733a889b0b894265b337b8ca84b2e8e6';
//   String api3 =
//       'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=733a889b0b894265b337b8ca84b2e8e6';
//   String api4 =
//       'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=733a889b0b894265b337b8ca84b2e8e6';
//   String api5 =
//       'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=733a889b0b894265b337b8ca84b2e8e6';
//
//   Future<Map<String, dynamic>> api_helper1() async {
//     Uri url = Uri.parse(api1);
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       // final json = ;
//       return jsonDecode(response.body) as Map<String, dynamic>;
//       // return data;
//     } else {
//       return {};
//     }
//   }
//
//   Future<Map<String, dynamic>> api_helper2() async {
//     Uri url = Uri.parse(api2);
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body) as Map<String, dynamic>;
//       // final json = response.body;
//       // final data = jsonDecode(json);
//       // return data;
//     } else {
//       return {};
//     }
//   }
//
//   Future<Map<String, dynamic>> api_helper3() async {
//     Uri url = Uri.parse(api3);
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body) as Map<String, dynamic>;
//     } else {
//       return {};
//     }
//   }
//
//   Future<Map<String, dynamic>> api_helper4() async {
//     Uri url = Uri.parse(api4);
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body) as Map<String, dynamic>;
//     } else {
//       return {};
//     }
//   }
//
//   Future<Map<String, dynamic>> api_helper5() async {
//     Uri url = Uri.parse(api5);
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body) as Map<String, dynamic>;
//     } else {
//       return {};
//     }
//   }
// }


import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NewsApiHelper {
  Future<Map> fetchApiNewsFirst() async {
    String api =
        "https://newsapi.org/v2/everything?q=apple&from=2024-08-20&to=2024-08-20&sortBy=popularity&apiKey=5473dca2e2ee462cbfd43a397dc00b05";

    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiNewsSec() async {
    String api1 =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-07-25&sortBy=publishedAt&apiKey=733a889b0b894265b337b8ca84b2e8e6";
    Uri url = Uri.parse(api1);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiNewsThird() async {
    String api2 =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5473dca2e2ee462cbfd43a397dc00b05";
    Uri url = Uri.parse(api2);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiNewsFourth() async {
    String api3 =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=5473dca2e2ee462cbfd43a397dc00b05";
    Uri url = Uri.parse(api3);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiNewsFive() async {
    String api4 =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=5473dca2e2ee462cbfd43a397dc00b05";
    Uri url = Uri.parse(api4);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }
}
