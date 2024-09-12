import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import '../../../../domain/entities/article.dart';

/// remote bloc: RemoteArticlesState
abstract class RemoteArticlesState extends Equatable {
  /// has 2 properties
  final List<ArticleEntity> ? articles;
  final DioError ? error;
  
  const RemoteArticlesState({this.articles,this.error});
  
  @override
  List<Object> get props => [articles!, error!];
}

/// has 3 status
class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  /// when done: we need articles: List<ArticleEntity>
  const RemoteArticlesDone(List<ArticleEntity> article) : super(articles: article);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioError error) : super(error: error);
}