import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../services/api_service.dart';

part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState>{
  final WalletApiService apiService;

  WalletCubit({required this.apiService}) : super(WalletInitial());
}