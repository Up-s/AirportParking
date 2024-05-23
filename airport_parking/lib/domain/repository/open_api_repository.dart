import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/util/result.dart';

abstract class OpenApiRepository {
  Future<Result<List<OpenAirport>>> fetch(String query);
}