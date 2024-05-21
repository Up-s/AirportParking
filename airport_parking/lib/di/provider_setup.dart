
// 1. Provider 전체
import 'package:airport_parking/data/data_source/firebase_api.dart';
import 'package:airport_parking/data/repository/firebase_api_repository_impl.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/domain/use_case/get_app_config_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 독립적인 객체
List<SingleChildWidget> independentModels = [
  Provider<FirebaseApi>(
    create: (context) => FirebaseApi(),
  ),
];

// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<FirebaseApi, FirebaseApiRepository>(
    update: (context, api, _) => FirebaseApiRepositoryImpl(api),
  ),
  ProxyProvider<FirebaseApiRepository, GetAppConfigUseCase>(
    update: (context, repository, _) => GetAppConfigUseCase(repository),
  ),
];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SplashViewModel>(
    create: (context) => SplashViewModel(context.read<GetAppConfigUseCase>()),
  ),
];
