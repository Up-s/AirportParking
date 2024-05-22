import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/util/result.dart';

class PostStoreUseCase {
  final FirebaseApiRepository repository;

  PostStoreUseCase(this.repository);

  Future<Result<void>> call(Store store) async {
    return await repository.updateStore(store);
  }
}