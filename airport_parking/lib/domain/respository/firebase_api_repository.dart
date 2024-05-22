import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/util/result.dart';

abstract class FirebaseApiRepository {
  Future<Result<AppConfig>> fetchConfig();
  Future<Result<void>> updateStore(Store store);
}