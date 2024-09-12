import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/constants.dart';
import 'package:dio/dio.dart';
part 'news_api_service.g.dart';


///  NewsApiService: abstract class
///  responsible for handling all the network call methods
// in constants.dart: we define newsAPIBaseURL
@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/top-headlines')
  /// in NewsApiService: has the same name method:--- getNewsArticles
  /// https://newsapi.org/v2/top-headlines?apiKey=456789521&country=us&category=business
  ///                        /top-headlines?
  ///                                      apiKey=456789521&country=us&category=business
  // run: flutter pub run build_runner build,
  //              will generate news_api_service.g.dart
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });
}