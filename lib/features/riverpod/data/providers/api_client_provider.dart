import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/core/utils/constants/constants.dart';
import 'package:my_goals_1/features/riverpod/data/client/client.dart';
import '../model/movie.dart';

final apiClientProvider = Provider<APIClient>((ref) => APIClient(
      Dio(
        BaseOptions(baseUrl: ApiConstants.baseUrl, contentType: ApiConstants.contentType),
      ),
    ));

final movieProvider = FutureProvider.autoDispose<Movie>(
  (ref) async {
    final APIClient client = ref.watch(apiClientProvider);

    try {
      Movie response = await client.getMovieById(ApiConstants.movieId, ApiConstants.apiKey);
      return response;
    } catch (e) {
      return Movie();
    }
  },
);
