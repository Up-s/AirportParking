import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/repository/firebase_repository.dart';
import 'package:airport_parking/util/result.dart';

class GetStoreUseCase {
  final FirebaseRepository repository;

  GetStoreUseCase(this.repository);

  Future<Result<List<Store>>> call(String path) async {
    return await repository.fetchStore(path);
  }
}