import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/domain/repository/open_api_repository.dart';
import 'package:airport_parking/util/result.dart';

class GetOpenApiUseCase {
  final OpenApiRepository repository;

  GetOpenApiUseCase(this.repository);

  Future<Result<List<OpenAirport>>> call(String query) async {
    return await repository.fetch(query);
  }
}