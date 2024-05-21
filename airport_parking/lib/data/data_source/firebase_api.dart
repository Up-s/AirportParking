import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  final _store = FirebaseFirestore.instance;

  final _config = 'config';
  final _configId = 'qr4azrlv6E3fNgu0QaJi';

  Future<Result<AppConfig>> fetchConfig() async {
    try {
      final result = await _store
          .collection(_config)
          .doc(_configId)
          .get()
          .then((snapshot) => AppConfig.formDocment(snapshot));
      return Result.success(result);
    } catch (e) {
      return const Result.error('Error: Firebase config');
    }
  }
}
