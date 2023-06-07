import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../services/api_service.dart';

part 'voucher_state.dart';

class VoucherCubit extends Cubit<VoucherState>{
  final VoucherApiService apiService;

  VoucherCubit({required this.apiService}) : super(VoucherInitial());
}