import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/movie.dart';

part 'client.g.dart';

@RestApi()
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @GET("movie/{id}?")
  Future<Movie> getMovieById(@Path("id") int id, @Query("api_key") String apiKey);
}
