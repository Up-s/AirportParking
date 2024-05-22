import 'package:airport_parking/data/data_source/firebase_api.dart';
import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/respository/firebase_repository.dart';
import 'package:airport_parking/util/result.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  final FirebaseApi api;

  FirebaseRepositoryImpl(this.api);

  @override
  Future<Result<AppConfig>> fetchConfig() async {
    return await api.fetchConfig();
  }

  @override
  Future<Result<void>> updateStore(Store store) async {
    return await api.updateStore(store);
  }
}