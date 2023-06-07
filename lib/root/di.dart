import 'package:get_it/get_it.dart';
import 'package:moniepoint_test/root/cubit/tab_selector/tab_selector_cubit.dart';

void setupNavServices(GetIt ioc) {
  ioc.registerSingleton<TabSelectorCubit>(
    TabSelectorCubit(),
  );
}
