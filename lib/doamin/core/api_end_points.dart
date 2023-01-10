import 'package:netflix/core/constants.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const download = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const search = '$baseUrl/search/movie?api_key=$apiKey';
}
