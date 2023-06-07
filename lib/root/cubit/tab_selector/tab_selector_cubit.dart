import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moniepoint_test/root/model/tab_model.dart';

class TabSelectorCubit extends Cubit<Tabs> {
  TabSelectorCubit() : super(Tabs.home);

  Future<void> selectTab(Tabs tab) async {
    emit(tab);
  }
}
