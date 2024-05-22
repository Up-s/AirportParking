import 'package:airport_parking/data/data_source/firebase_api.dart';
import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/util/result.dart';

class FirebaseApiRepositoryImpl implements FirebaseApiRepository {
  final FirebaseApi api;

  FirebaseApiRepositoryImpl(this.api);

  @override
  Future<Result<AppConfig>> call() async {
    return await api();
  }
}