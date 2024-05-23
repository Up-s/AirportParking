import 'package:airport_parking/data/data_source/open_api.dart';
import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/domain/repository/open_api_repository.dart';
import 'package:airport_parking/util/result.dart';

class OpenApiRepositoryImpl implements OpenApiRepository {
  final OpenApi api;

  OpenApiRepositoryImpl(this.api);

  @override
  Future<Result<List<OpenAirport>>> fetch(String query) async {
    return await api.fetch(query);
  }
}