import 'package:get_it/get_it.dart';
import './services/api_service.dart';
import 'package:moniepoint_test/shared/network/network_request.dart';
import 'cubit/voucher_cubit.dart';
import 'package:moniepoint_test/configs/app_configs.dart';


void setupVoucher(GetIt ioc){
  ioc.registerSingleton<VoucherCubit>(VoucherCubit(
    apiService: VoucherApiService(
      http: HttpService(baseUrl: AppURL.baseUrl),
    ),
  ));
}