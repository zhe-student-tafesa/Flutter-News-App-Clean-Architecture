/// define abstract class
abstract class RemoteArticlesEvent {
  const RemoteArticlesEvent();
}

/// GetArticles extends:  abstract class
class GetArticles extends RemoteArticlesEvent {
  const GetArticles();
}