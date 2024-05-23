import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  final _db = FirebaseFirestore.instance;

  final _config = 'config';
  final _configId = 'qr4azrlv6E3fNgu0QaJi';
  final _store = 'store';

  Future<Result<AppConfig>> fetchConfig() async {
    try {
      final result = await _db
          .collection(_config)
          .doc(_configId)
          .get()
          .then((snapshot) => AppConfig.formDocument(snapshot));
      return Result.success(result);
    } catch (_) {
      return const Result.error('Error: Firebase fetch config');
    }
  }

  Future<Result<List<Store>>> fetchStore(String path) async {
    try {
      if (path == 'RSU' || path == 'USN' || path == 'KUV' || path == 'WJU') {
        return const Result.success([]);
      } else {
        final result = await _db.collection(path).get().then((snapshot) =>
            snapshot.docs.map((e) => Store.formDocument(e)).toList());
        return Result.success(result);
      }
    } catch (_) {
      return const Result.error('Error: Firebase fetch store');
    }
  }

  Future<Result<void>> updateStore(Store store) async {
    try {
      final jsonStore = store.toJson();
      final _ = await _db
          .collection(store.path)
          .add(jsonStore)
          .then((DocumentReference doc) {
        print('DocumentSnapshot added with ID: ${doc.id}');
      });
      return const Result.success(());
    } catch (_) {
      return const Result.error('Error: Firebase update store');
    }
  }
}
