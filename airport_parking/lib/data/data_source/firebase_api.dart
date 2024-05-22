import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
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
          .then((snapshot) => AppConfig.formDocument(snapshot));
      return Result.success(result);
    } catch (e) {
      return const Result.error('Error: Firebase config');
    }
  }

  Future<Result<void>> updateStore(Store store) async {
    try {
      final jsonStore = store.toJson();
      final _ = await _store.collection(store.path).add(jsonStore).then((DocumentReference doc) {
        print('DocumentSnapshot added with ID: ${doc.id}');
      });
      return const Result.success(());
      
    } catch (e) {
      return const Result.error('Error: Firebase update store');
    }
  }
}