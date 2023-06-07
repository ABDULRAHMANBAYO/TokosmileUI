import 'package:get_it/get_it.dart';
import './services/api_service.dart';
import 'package:moniepoint_test/shared/network/network_request.dart';
import 'cubit/settings_cubit.dart';
import 'package:moniepoint_test/configs/app_configs.dart';


void setupSettings(GetIt ioc){
  ioc.registerSingleton<SettingsCubit>(SettingsCubit(
    apiService: SettingsApiService(
      http: HttpService(baseUrl: AppURL.baseUrl),
    ),
  ));
}