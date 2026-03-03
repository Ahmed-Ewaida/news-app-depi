import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:news_app/api/api.dart';
import 'package:news_app/article_model.dart';
import 'package:news_app/cubit/news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitialState());

  // ignore: strict_top_level_inference
  static NewsCubit get(context) => BlocProvider.of(context);

  void getNews() async {
    emit(NewsLoadingState());
    try {
      ApiService apiService = ApiService();
      Response response = await apiService.getData();
      List<dynamic> articles = response.data['articles'];
      List<NewsModel> newsList = articles
          .map((article) => NewsModel.fromJson(article))
          .toList();

      emit(NewsLoadedState(newsList));
    } catch (e) {
      emit(NewsErrorState(e.toString()));
    }
  }
}
