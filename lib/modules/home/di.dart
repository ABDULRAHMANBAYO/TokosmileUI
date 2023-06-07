import 'package:get_it/get_it.dart';
import './services/api_service.dart';
import 'package:moniepoint_test/shared/network/network_request.dart';
import 'cubit/home_cubit.dart';
import 'package:moniepoint_test/configs/app_configs.dart';


void setupHome(GetIt ioc){
  ioc.registerSingleton<HomeCubit>(HomeCubit(
    apiService: HomeApiService(
      http: HttpService(baseUrl: AppURL.baseUrl),
    ),
  ));
}