
// 1. Provider 전체
import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/data/data_source/firebase_api.dart';
import 'package:airport_parking/data/data_source/open_api.dart';
import 'package:airport_parking/data/repository/firebase_api_repository_impl.dart';
import 'package:airport_parking/data/repository/open_api_repository_impl.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/domain/respository/open_api_repository.dart';
import 'package:airport_parking/domain/use_case/get_app_config_use_case.dart';
import 'package:airport_parking/domain/use_case/get_open_api_use_case.dart';
import 'package:airport_parking/domain/use_case/map_change_page_use_case.dart';
import 'package:airport_parking/presentation/airport/airport_view_model.dart';
import 'package:airport_parking/presentation/map/map_view_model.dart';
import 'package:airport_parking/presentation/splash/splash_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

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
  Provider<AirportData>(
    create: (context) => AirportData(),
  ),
  Provider<http.Client>(
    create: (context) => http.Client(),
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
  ProxyProvider<AirportData, MapChangePageUseCase>(
    update: (context, data, _) => MapChangePageUseCase(data),
  ),
  ProxyProvider<http.Client, OpenApi>(
    update: (context, client, _) => OpenApi(client),
  ),
  ProxyProvider<OpenApi, OpenApiRepository>(
    update: (context, api, _) => OpenApiRepositoryImpl(api),
  ),
  ProxyProvider<OpenApiRepository, GetOpenApiUseCase>(
    update: (context, repository, _) => GetOpenApiUseCase(repository),
  ),
];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SplashViewModel>(
    create: (context) => SplashViewModel(context.read<GetAppConfigUseCase>()),
  ),
  ChangeNotifierProvider<MapViewModel>(
    create: (context) => MapViewModel(context.read<MapChangePageUseCase>()),
  ),
  ChangeNotifierProvider<AirportViewModel>(
    create: (context) => AirportViewModel(context.read<GetOpenApiUseCase>()),
  ),
];
