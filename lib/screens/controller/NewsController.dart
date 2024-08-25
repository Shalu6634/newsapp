// import 'package:get/get.dart';
//
// import '../api_helper/api_helper.dart';
// import '../modal/news_modal.dart';
//
//
// class NewsController extends GetxController {
//   ApiHelper apiHelper = ApiHelper();
//   Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   Future<void> fromMap1() async {
//     try {
//       final data = await apiHelper.api_helper1();
//       newsModal.value = NewsModal.fromApi(data);
//       print(newsModal.value!.articles.length);
//     } catch (e) {
//       print('Error fetching news: $e');
//     }
//   }
//
//   Future<NewsModal?> getNews() async {
//     return newsModal.value;
//   }
//
//   NewsController() {
//     fromMap1();
//   }
// }
//
// class NewsController2 extends GetxController {
//   ApiHelper apiHelper = ApiHelper();
//   Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   // Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   Future<void> fromMap2() async {
//     try {
//       final data = await apiHelper.api_helper2();
//       newsModal.value = NewsModal.fromApi(data);
//       print(newsModal.value);
//     } catch (e) {
//       print('Error fetching news: $e');
//     }
//   }
//
//   Future<NewsModal?> getNews() async {
//     return newsModal.value;
//   }
//
//   NewsController2() {
//     fromMap2();
//   }
// }
//
// // //
// //
// class NewsController3 extends GetxController {
//   ApiHelper apiHelper = ApiHelper();
//
//   // Rx<NewsModal?> countryModal = Rx<NewsModal?>(null);
//   Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   Future<void> fromMap3() async {
//     try {
//       final data = await apiHelper.api_helper3();
//       newsModal.value = NewsModal.fromApi(data);
//
//     } catch (e) {
//       print('Error fetching news: $e');
//     }
//   }
//
//   Future<NewsModal?> getNews() async {
//     return newsModal.value;
//   }
//
//   NewsController3() {
//     fromMap3();
//   }
// }
//
// //
// class NewsController4 extends GetxController {
//   ApiHelper apiHelper = ApiHelper();
//
//   Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   Future<void> fromMap4() async {
//     try {
//       final data = await apiHelper.api_helper4();
//       newsModal.value = NewsModal.fromApi(data);
//
//     } catch (e) {
//       print('Error fetching news: $e');
//     }
//   }
//
//   Future<NewsModal?> getNews() async {
//     return newsModal.value;
//   }
//
//   NewsController4() {
//     fromMap4();
//   }
// }
//
// class NewsController5 extends GetxController {
//   ApiHelper apiHelper = ApiHelper();
//
//   Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
//
//   Future<void> fromMap5() async {
//     try {
//       final data = await apiHelper.api_helper5();
//       newsModal.value = NewsModal.fromApi(data);
//
//     } catch (e) {
//       print('Error fetching news: $e');
//     }
//   }
//
//   Future<NewsModal?> getNews() async {
//     return newsModal.value;
//   }
//
//   NewsController5() {
//     fromMap5();
//   }
// }




import 'package:get/get.dart';

import '../api_helper/api_helper.dart';
import '../modal/news_modal.dart';


class NewsApiController2 extends GetxController {
  NewsApiHelper newsApiHelper = NewsApiHelper();
  Rx<NewsFirstModal?> newsFirstModal = Rx<NewsFirstModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await newsApiHelper.fetchApiNewsSec();
      newsFirstModal =
          NewsFirstModal.fromApi(data as Map<String,dynamic>).obs;
      print(newsFirstModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsFirstModal?> getNews() async {
    return newsFirstModal.value;
  }

  NewsApiController2() {
    fromMap();
  }
}

class NewsApiController4 extends GetxController {
  NewsApiHelper newsApiHelper = NewsApiHelper();
  Rx<NewsFirstModal?> newsFirstModal = Rx<NewsFirstModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await newsApiHelper.fetchApiNewsFourth();
      newsFirstModal.value =
          NewsFirstModal.fromApi(data as Map<String, dynamic>);
      print(newsFirstModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsFirstModal?> getNews() async {
    return newsFirstModal.value;
  }

  NewsApiController4() {
    fromMap();
  }
}

class NewsApiController extends GetxController {
  NewsApiHelper newsApiHelper = NewsApiHelper();
  Rx<NewsFirstModal?> newsFirstModal = Rx<NewsFirstModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await newsApiHelper.fetchApiNewsFirst();
      newsFirstModal.value =
          NewsFirstModal.fromApi(data as Map<String, dynamic>);
      print(newsFirstModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsFirstModal?> getNews() async {
    return newsFirstModal.value;
  }

  NewsApiController() {
    fromMap();
  }
}

class NewsApiController5 extends GetxController {
  NewsApiHelper newsApiHelper = NewsApiHelper();
  Rx<NewsFirstModal?> newsFirstModal = Rx<NewsFirstModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await newsApiHelper.fetchApiNewsFive();
      newsFirstModal.value =
          NewsFirstModal.fromApi(data as Map<String, dynamic>);
      print(newsFirstModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsFirstModal?> getNews() async {
    return newsFirstModal.value;
  }

  NewsApiController5() {
    fromMap();
  }
}

class NewsApiController3 extends GetxController {
  NewsApiHelper newsApiHelper = NewsApiHelper();
  Rx<NewsFirstModal?> newsFirstModal = Rx<NewsFirstModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await newsApiHelper.fetchApiNewsThird();
      newsFirstModal.value =
          NewsFirstModal.fromApi(data as Map<String, dynamic>);
      print(newsFirstModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsFirstModal?> getNews() async {
    return newsFirstModal.value;
  }

  NewsApiController3() {
    fromMap();
  }
}
