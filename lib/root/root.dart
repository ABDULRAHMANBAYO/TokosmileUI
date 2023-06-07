import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/modules/home/root.dart';
import 'package:moniepoint_test/modules/settings/root.dart';
import 'package:moniepoint_test/modules/voucher/root.dart';
import 'package:moniepoint_test/modules/wallet/root.dart';
import 'package:moniepoint_test/root/cubit/tab_selector/tab_selector_cubit.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'model/tab_model.dart';

class RootWidget extends StatelessWidget {
  final Tabs? currentTab;
  const RootWidget({super.key, this.currentTab});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabSelectorCubit, Tabs>(
      bloc: getIt<TabSelectorCubit>(),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          body: Stack(
            children: [
              HomeRootWidget(
                isCurrent: state == Tabs.home,
                key: Key(Tabs.home.name),
              ),
              VoucherRootWidget(
                isCurrent: state == Tabs.voucher,
                key: Key(Tabs.voucher.name),
              ),
              WalletRootWidget(
                isCurrent: state == Tabs.wallet,
                key: Key(Tabs.wallet.name),
              ),
              SettingsRootWidget(
                isCurrent: state == Tabs.settings,
                key: Key(Tabs.settings.name),
              )
            ],
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            enableFeedback: true,
            unselectedItemColor: AppColors.grayScale[5],
            selectedItemColor: AppColors.black[5],
            selectedLabelStyle: GoogleFonts.plusJakartaSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black[5],
            ),
            unselectedLabelStyle: GoogleFonts.plusJakartaSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grayScale[5],
            ),
            currentIndex: Tabs.values.indexOf(state),
            onTap: (index) {
              getIt<TabSelectorCubit>().selectTab(Tabs.values[index]);
            },
            items: Tabs.values
                .map((tab) => BottomNavigationBarItem(
                    icon: CustomAssetImage(
                      url:
                          Tabs.values.indexOf(state) == Tabs.values.indexOf(tab)
                              ? tab.selectedIcon
                              : tab.unSelectedIcon,
                      height: 24.h,
                      width: 24.w,
                      fit: BoxFit.scaleDown,
                    ),
                    label: tab.name))
                .toList(),
          ),
        );
      },
    );
  }
}
