import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../services/api_service.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState>{
  final SettingsApiService apiService;

  SettingsCubit({required this.apiService}) : super(SettingsInitial());
}