import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/data/data_source/firebase_api.dart';
import 'package:airport_parking/data/data_source/open_api.dart';
import 'package:airport_parking/data/repository/firebase_repository_impl.dart';
import 'package:airport_parking/data/repository/open_api_repository_impl.dart';
import 'package:airport_parking/domain/repository/firebase_repository.dart';
import 'package:airport_parking/domain/repository/open_api_repository.dart';
import 'package:airport_parking/domain/use_case/get_config_use_case.dart';
import 'package:airport_parking/domain/use_case/get_open_api_use_case.dart';
import 'package:airport_parking/domain/use_case/get_store_use_case.dart';
import 'package:airport_parking/domain/use_case/airport_list_use_case.dart';
import 'package:airport_parking/domain/use_case/post_analytics_use_case.dart';
import 'package:airport_parking/domain/use_case/post_store_use_case.dart';
import 'package:airport_parking/presentation/airport/airport_view_model.dart';
import 'package:airport_parking/presentation/edit_airport/edit_store_view_model.dart';
import 'package:airport_parking/presentation/map/map_view_model.dart';
import 'package:airport_parking/presentation/splash/splash_view_model.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// 1. Provider 전체
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
  Provider<PostAnalyticsUseCase>(
    create: (context) => PostAnalyticsUseCase(),
  ),
];

// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<FirebaseApi, FirebaseRepository>(
    update: (context, api, _) => FirebaseRepositoryImpl(api),
  ),
  ProxyProvider<FirebaseRepository, GetConfigUseCase>(
    update: (context, repository, _) => GetConfigUseCase(repository),
  ),
  ProxyProvider<FirebaseRepository, GetStoreUseCase>(
    update: (context, repository, _) => GetStoreUseCase(repository),
  ),
  ProxyProvider<AirportData, AirportListUseCase>(
    update: (context, data, _) => AirportListUseCase(data),
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
  ProxyProvider<FirebaseRepository, PostStoreUseCase>(
    update: (context, repository, _) => PostStoreUseCase(repository),
  ),
];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SplashViewModel>(
    create: (context) => SplashViewModel(
      context.read<GetConfigUseCase>(),
      context.read<PostAnalyticsUseCase>(),
    ),
  ),
  ChangeNotifierProvider<MapViewModel>(
    create: (context) => MapViewModel(
      context.read<AirportListUseCase>(),
      context.read<PostAnalyticsUseCase>(),
    ),
  ),
  ChangeNotifierProvider<AirportViewModel>(
    create: (context) => AirportViewModel(
      context.read<GetOpenApiUseCase>(),
      context.read<GetStoreUseCase>(),
      context.read<PostAnalyticsUseCase>(),
    ),
  ),
  ChangeNotifierProvider<EditStoreViewModel>(
    create: (context) => EditStoreViewModel(context.read<PostStoreUseCase>()),
  ),
];
