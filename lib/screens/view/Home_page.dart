// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/NewsController.dart';
// import '../modal/news_modal.dart';
// import 'DetailScreen.dart';
//
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     NewsController newsController = Get.put(NewsController());
//     NewsController2 newsController2 = Get.put(NewsController2());
//     NewsController3 newsController3 = Get.put(NewsController3());
//     NewsController4 newsController4 = Get.put(NewsController4());
//     NewsController5 newsController5 = Get.put(NewsController5());
//
//     return DefaultTabController(
//       length: 1,
//       child: Scaffold(
//         // backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.grey.shade700,
//           shadowColor: Colors.white,
//           elevation: 5,
//           leading: Icon(Icons.menu, color: Colors.white, size: 30),
//           title: Text('News', style: TextStyle(color: Colors.white)),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Icon(Icons.account_circle, color: Colors.white, size: 30),
//             )
//           ],
//         ),
//         body:
//         FutureBuilder<NewsModal?>(
//           future: newsController2.getNews(),
//           builder: (context, snapshot) {
//               NewsModal? checkData = snapshot.data;
//             if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else if (snapshot.hasData && snapshot.data != null) {
//               final apiModal = snapshot.data!;
//               return SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: height * 0.3,
//                           width: width * double.infinity,
//                           decoration: BoxDecoration(
//
//                             boxShadow: const [
//                               BoxShadow(
//                                   color: Colors.black12,
//                                   blurRadius: 1,
//                                   offset: Offset(
//                                     2,
//                                     2,
//                                   ))
//                             ],
//                             border: Border.all(width: 1,color: Colors.white12),
//                             borderRadius:
//                             const BorderRadius.all(Radius.circular(15)),
//                             // color: Colors.pink,
//                             image: DecorationImage(
//                                 image: NetworkImage(newsController
//                                     .newsModal.value!.articles[0].urlToImage),
//                                 fit: BoxFit.cover,
//                                 opacity: 4),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 10),
//                                 child: Text(
//                                   textAlign: TextAlign.center,
//                                   newsController
//                                       .newsModal.value!.articles[0].title,
//                                   style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: height * 0.03,
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//
//                       Container(
//                         height: height * 0.1 + 50,
//                         width: width * 0.4,
//                         color: Colors.grey.shade50,
//                         child: Column(
//                           children: [
//                             Text(
//                               newsController
//                                   .newsModal.value!.articles[0].author,
//                               style: const TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               textAlign: TextAlign.center,
//                               newsController
//                                   .newsModal.value!.articles[0].title,
//                               style: const TextStyle(
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             } else if (snapshot.hasError) {
//               return Text('${snapshot.error}');
//             } else {
//               return const Center(child: Text('No Data'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
//
// String selectedIndex = '';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/NewsController.dart';
import '../modal/news_modal.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsApiController newsApiController = Get.put(NewsApiController());
    final NewsApiController2 newsApiController2 = Get.put(NewsApiController2());
    final NewsApiController3 newsApiController3 = Get.put(NewsApiController3());
    final NewsApiController4 newsApiController4 = Get.put(NewsApiController4());
    final NewsApiController5 newsApiController5 = Get.put(NewsApiController5());

    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              tabAlignment: TabAlignment.start,
              indicatorPadding: EdgeInsets.zero,
              labelStyle: TextStyle(),
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Tesla'),
                Tab(text: 'Business'),
                Tab(text: 'Tech'),
                Tab(text: 'Market & Investments'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              FutureBuilder<NewsFirstModal?>(
                future: newsApiController.getNews(),
                builder: (context, snapshot) {
                  NewsFirstModal? apimodal = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data != null) {
                    final newsModal = snapshot.data!;
                    return ListView.builder(
                      itemCount: newsModal.articles.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    detailList = newsModal;
                                    selIndex = index;
                                    Get.toNamed('/detail');
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(newsModal
                                                .articles[index].urlToImage))),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 150,
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Author : ${newsModal.articles[index].author}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          maxLines: 3,
                                          "${newsModal.articles[index].title}",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No Data'));
                  }
                },
              ),
              FutureBuilder<NewsFirstModal?>(
                future: newsApiController2.getNews(),
                builder: (context, snapshot) {
                  NewsFirstModal? secModal = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data != null) {
                    final secModal = snapshot.data!;
                    return ListView.builder(
                      itemCount: secModal.articles.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 600,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      detailList = secModal;
                                      selIndex = index;
                                      Get.toNamed('/detail');
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(secModal
                                                  .articles[index]
                                                  .urlToImage))),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(

                                      height: 160,
                                      width: 150,
                                      child: Column(
                                        children: [
                                          Text(maxLines: 3,
                                            "Author: ${secModal.articles[index].author}",
                                            style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${secModal.articles[index].title}",style: TextStyle(fontSize: 9),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No Data'));
                  }
                },
              ),
              FutureBuilder<NewsFirstModal?>(
                future: newsApiController3.getNews(),
                builder: (context, snapshot) {
                  NewsFirstModal? theModal = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data != null) {
                    final theModal = snapshot.data!;
                    return ListView.builder(
                      itemCount: theModal.articles.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    detailList = theModal;
                                    selIndex = index;
                                    Get.toNamed('/detail');
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(theModal
                                                .articles[index].urlToImage))),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    height: 160,
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Text(maxLines: 3,
                                          "Author: ${theModal.articles[index].author}",
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " ${theModal.articles[index].title} ",style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No Data'));
                  }
                },
              ),
              FutureBuilder<NewsFirstModal?>(
                future: newsApiController4.getNews(),
                builder: (context, snapshot) {
                  NewsFirstModal? frothModal = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data != null) {
                    final frothModal = snapshot.data!;
                    return ListView.builder(
                      itemCount: frothModal.articles.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    detailList = frothModal;
                                    selIndex = index;
                                    Get.toNamed('/detail');
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),

                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(frothModal
                                                .articles[index].urlToImage))),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    height: 160,
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Text(maxLines: 3,
                                          "Author: ${frothModal.articles[index].author}",
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${frothModal.articles[index].title}",style: TextStyle(fontSize: 9),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No Data'));
                  }
                },
              ),
              FutureBuilder<NewsFirstModal?>(
                future: newsApiController5.getNews(),
                builder: (context, snapshot) {
                  NewsFirstModal? fiveModal = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data != null) {
                    final fiveModal = snapshot.data!;
                    return ListView.builder(
                      itemCount: fiveModal.articles.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    detailList = fiveModal;
                                    selIndex = index;
                                    Get.toNamed('/detail');
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(fiveModal
                                                .articles[index].urlToImage))),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    height: 160,
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Text(maxLines: 3,
                                          "Author: ${fiveModal.articles[index].author}",
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${fiveModal.articles[index].title}",style: TextStyle(fontSize: 9),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No Data'));
                  }
                },
              ),
            ]),
          ),
        ],
      )),
    );
  }
}

int selIndex = 0;
NewsFirstModal? detailList;
NewsFirstModal? detailList1;
var helper;
