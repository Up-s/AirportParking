import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/util/result.dart';

abstract class FirebaseApiRepository {
  Future<Result<AppConfig>> call();
}