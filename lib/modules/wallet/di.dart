import 'package:get_it/get_it.dart';
import './services/api_service.dart';
import 'package:moniepoint_test/shared/network/network_request.dart';
import 'cubit/wallet_cubit.dart';
import 'package:moniepoint_test/configs/app_configs.dart';


void setupWallet(GetIt ioc){
  ioc.registerSingleton<WalletCubit>(WalletCubit(
    apiService: WalletApiService(
      http: HttpService(baseUrl: AppURL.baseUrl),
    ),
  ));
}