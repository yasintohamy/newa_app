import 'package:dio/dio.dart';
import 'package:news_app/models/result_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});
  Future<List<ResultModel>> getGeneralNews({required String categ}) async {
    try {
      var response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_76034177f9edb9aabc95628baf9c01425af1b&country=eg&category=$categ',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> results = jsonData["results"];
      List<ResultModel> resulsList = [];
      for (var result in results) {
        ResultModel resultModel = ResultModel(
          image: result["image_url"],
          title: result["title"],
          subTitle: result["description"],
          link: result["link"],
        );
        resulsList.add(resultModel);
      }
      return resulsList;
    } catch (e) {
      return [];
    }
  }
}
