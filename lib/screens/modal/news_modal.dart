// class NewsModal {
//   final List<Articles> articles;
//
//   NewsModal({required this.articles});
//
//   factory NewsModal.fromApi(Map<dynamic, dynamic> json) {
//     return NewsModal(
//       articles: (json['articles'] as List<dynamic>?)!
//           .map((e) => Articles.fromApi(e as Map<dynamic, dynamic>))
//           .toList(),
//     );
//   }
// }
//
// class Articles {
//   final Source source;
//   final String author;
//   final String title;
//   final String description;
//   final String publishedAt;
//   final String content;
//   final String url;
//   final String urlToImage;
//
//   Articles(
//       {required this.source,
//         required this.author,
//         required this.title,
//         required this.description,
//         required this.publishedAt,
//         required this.content,
//         required this.url,
//         required this.urlToImage});
//
//   factory Articles.fromApi(Map json) {
//     return Articles(
//       source: Source.fromApi(json['source'] as Map<dynamic, dynamic>),
//       author: json['author'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       publishedAt: json['publishedAt'] ?? '',
//       content: json['content'] ?? '',
//       url: json['url'] ?? '',
//       urlToImage: json['urlToImage'] ??
//           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL-lc-7QVB5G378m2HyN9xzQTKinLpIIK2SA&s',
//     );
//   }
// }
//
// class Source {
//   final String name;
//
//   Source({required this.name});
//
//   factory Source.fromApi(Map json) {
//     return Source(name: json['name'] ?? '');
//   }
// }
//
// class NewsFirstModal {
//    List<Articles> articles;
//
//   NewsFirstModal({required this.articles});
//
//   factory NewsFirstModal.fromApi(Map json) {
//     return NewsFirstModal(
//       articles: (json['articles'] as List)
//           .map((e) => Articles.fromApi(e))
//           .toList(),
//     );
//   }
// }
//
// class Articles {
//   late Source source;
//   late String author;
//   late String title;
//   late String description;
//   late String publishedAt;
//   late String content;
//   late String urlToImage;
//   // late String url;
//
//   Articles({
//     required this.source,
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.publishedAt,
//     required this.content,
//     required this.urlToImage,
//     // required this.url
//   });
//
//   factory Articles.fromApi(Map json) {
//     return Articles(
//       source: Source.fromApi(json['source']),
//       author: json['author'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       publishedAt: json['publishedAt'] ?? '',
//       content: json['content'] ?? '',
//       urlToImage: json['urlToImage'] ?? "https://www.presse-citron.net/app/uploads/2024/07/bangyu-wang-omoCm0bvNW4-unsplash-1-1.jpg"
//         // ,url: json['url'] ?? ''
//     );
//   }
// }
//
// class Source {
//   late String name;
//
//   Source({required this.name});
//
//   factory Source.fromApi(Map json) {
//     return Source(name: json['name'] ?? '');
//   }
// }

class NewsFirstModal {
  final List<Articles> articles;

  NewsFirstModal({required this.articles});

  factory NewsFirstModal.fromApi(Map json) {
    return NewsFirstModal(
      articles:
          (json['articles'] as List).map((e) => Articles.fromApi(e)).toList(),
    );
  }
}

class Articles {
  final Source source;
  late String author;
  final String title;
  final String description;
  final String publishedAt;
  final String content;
  final String url;
  final String urlToImage;

  Articles(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.content,
      required this.url,
      required this.urlToImage});

  factory Articles.fromApi(Map json) {
    return Articles(
      source: Source.fromApi(json['source'] as Map),
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
    );
  }
}

class Source {
  final String name;

  Source({required this.name});

  factory Source.fromApi(Map json) {
    return Source(name: json['name'] ?? '');
  }
}
