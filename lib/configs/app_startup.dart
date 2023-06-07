import 'package:get_it/get_it.dart';
import 'package:moniepoint_test/modules/home/di.dart';
import 'package:moniepoint_test/root/di.dart';
import '../shared/di.dart';

// This is our global ServiceLocator
GetIt getIt = GetIt.instance;

class AppStartUp {
  Future<void> setUp() async {
    getIt.allowReassignment = true;
    await registerServices(getIt);
  }

  Future<void> registerServices(ioc) async {
    setupSharedServices(ioc);
    setupNavServices(ioc);
    setupHome(ioc);
  }
}
