import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/util/result.dart';

abstract class FirebaseRepository {
  Future<Result<AppConfig>> fetchConfig();
  Future<Result<List<Store>>> fetchStore(String path);
  Future<Result<void>> updateStore(Store store);
}