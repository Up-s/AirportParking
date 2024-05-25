import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/repository/firebase_repository.dart';
import 'package:airport_parking/util/result.dart';

class PostStoreUseCase {
  final FirebaseRepository repository;

  PostStoreUseCase(this.repository);

  Future<Result<void>> call(Store store) async {
    return await repository.updateStore(store);
  }
}