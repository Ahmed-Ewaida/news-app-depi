import 'package:news_app/article_model.dart';

class NewsState{}


class NewsInitialState extends NewsState{}
class NewsLoadingState extends NewsState{}
class NewsLoadedState extends NewsState{
  
  final List<NewsModel> news;
  NewsLoadedState(this.news);
}
class NewsErrorState extends NewsState{
  final String error;
  NewsErrorState(this.error);
}


