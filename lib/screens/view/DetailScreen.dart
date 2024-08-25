// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controller/NewsController.dart';
// import '../modal/news_modal.dart';
//
// class DetailPage extends StatelessWidget {
//   const DetailPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     final NewsController newsController = Get.put(NewsController());
//     final NewsController2 newsController2 = Get.put(NewsController2());
//     final NewsController3 newsController3 = Get.put(NewsController3());
//     final NewsController4 newsController4 = Get.put(NewsController4());
//     final NewsController5 newsController5 = Get.put(NewsController5());
//     return Scaffold(
//       appBar: AppBar(),
// // body: SingleChildScrollView(
// //   scrollDirection: Axis.vertical,
// //   child: Column(
// //     children: [
// //       FutureBuilder<NewsModal?>(
// //         future: newsController.getNews(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return const Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else if (snapshot.hasData && snapshot.data != null) {
// //             return SingleChildScrollView(
// //               scrollDirection: Axis.vertical,
// //               child: Column(
// //                 children: [
// //                   Padding(
// //                     padding: const EdgeInsets.all(15),
// //                     child: Container(
// //                       height: height * 0.4,
// //                       width: width * 1,
// //                       decoration: BoxDecoration(
// //                         border:
// //                         Border.all(width: 1, color: Colors.black12),
// //                         borderRadius:
// //                         BorderRadius.all(Radius.circular(10)),
// //                         image: DecorationImage(
// //                             image: NetworkImage((selectedData ==
// //                                 newsController.toString())
// //                                 ? newsController.newsModal.value!
// //                                 .articles[selectedIndex].urlToImage
// //                                 : (selectedData ==
// //                                 newsController2.toString())
// //                                 ? newsController2
// //                                 .newsModal
// //                                 .value!
// //                                 .articles[selectedIndex]
// //                                 .urlToImage
// //                                 : (selectedData ==
// //                                 newsController3.toString())
// //                                 ? newsController3
// //                                 .newsModal
// //                                 .value!
// //                                 .articles[selectedIndex]
// //                                 .urlToImage
// //                                 : (selectedData ==
// //                                 newsController4
// //                                     .toString())
// //                                 ? newsController4
// //                                 .newsModal
// //                                 .value!
// //                                 .articles[selectedIndex]
// //                                 .urlToImage
// //                                 : newsController5
// //                                 .newsModal
// //                                 .value!
// //                                 .articles[selectedIndex]
// //                                 .urlToImage),
// //                             fit: BoxFit.cover),
// //                       ),
// //                     ),
// //                   ),
// //                   Column(
// //                     children: [
// //                       Text(
// //                         "Author : ${detailModal!.articles[selectedIndex].author}",
// //                         style: TextStyle(
// //                             fontSize: 20, fontWeight: FontWeight.bold),
// //                       ),
// //                       SizedBox(
// //                         height: 10,
// //                       ),
// //                       Text(
// //                         "Reactive : ${detailModal!.articles[selectedIndex].reactive}",
// //                         style: TextStyle(
// //                             fontSize: 18, fontWeight: FontWeight.bold),
// //                       ),
// //                       Container(
// //                         height: 500,
// //                         width: 400,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white12,
// //                           borderRadius: BorderRadius.circular(20),
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             SizedBox(
// //                               height: 30,
// //                               width: 20,
// //                             ),
// //                             Text(
// //                               "PublishedAt : ${detailModal!.articles[selectedIndex].publishedAt}\n",
// //                               style:
// //                               TextStyle(fontWeight: FontWeight.bold),
// //                             ),
// //                             Padding(
// //                               padding: const EdgeInsets.only(
// //                                   top: 10, right: 10, left: 20),
// //                               child: Text(
// //                                 "${detailModal!.articles[selectedIndex].title}\n",
// //                                 style: TextStyle(
// //                                     fontWeight: FontWeight.w800),
// //                               ),
// //                             ),
// //                             Text(
// //                               "Content",
// //                               style: TextStyle(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontSize: 18),
// //                             ),
// //                             Padding(
// //                               padding: const EdgeInsets.only(
// //                                   left: 10, right: 10, top: 10),
// //                               child: Text(
// //                                 "👉 :   ${detailModal!.articles[selectedIndex].content}\n",
// //                                 style: TextStyle(fontSize: 15),
// //                               ),
// //                             ),
// //                             Padding(
// //                               padding: const EdgeInsets.only(
// //                                   left: 20, right: 20, top: 10),
// //                               child: Text(
// //                                 "👉 :  ${detailModal!.articles[selectedIndex].description}\n",
// //                                 style: TextStyle(
// //                                     fontWeight: FontWeight.w500,
// //                                     fontSize: 18),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       )
// //                     ],
// //                   )
// //                 ],
// //               ),
// //             );
// //           } else {
// //             return const Center(child: Text('No Data'));
// //           }
// //         },
// //       ),
// //     ],
// //   ),
// // ),
//     );
//   }
// }
//
//
// int selectedIndex = 0;
// NewsModal? detailModal;
// int selectedData = 0;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/NewsController.dart';
import '../modal/news_modal.dart';
import 'Home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsApiController newsApiController = Get.put(NewsApiController());
    final NewsApiController2 newsApiController2 = Get.put(NewsApiController2());


    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FutureBuilder<NewsFirstModal?>(
              future: newsApiController.getNews(),
              builder: (context, snapshot) {

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData && snapshot.data != null) {

                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          width: 420,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(detailList!
                                      .articles[selIndex].urlToImage))),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [

                            Text(
                              "Author : ${detailList!.articles[selIndex].author}",
                              style: TextStyle(

                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),

                            Container(
                              height: 400,
                              width: 400,
                              decoration: BoxDecoration(
                                color:Colors.black12,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                  Text(
                                    "PublishedAt : ${detailList!.articles[selIndex].publishedAt}\n",
                                    style: TextStyle(

                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 20, left: 20),
                                    child: Text(
                                      "${detailList!.articles[selIndex].title}\n",
                                      style: TextStyle(),
                                    ),
                                  ),
                                  Text(
                                    "Content",
                                    style: TextStyle(

                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 10),
                                    child: Text(
                                      "${detailList!.articles[selIndex].content}\n",
                                      style: TextStyle(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:20,left:20),
                                    child: Text(
                                      "${detailList!.articles[selIndex].description}\n",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('No Data'));
                }
              },
            ),


          ],
        ),
      ),
    );
  }
}
