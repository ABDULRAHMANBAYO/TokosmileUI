import '../../generated/l10n.dart';
import '../../shared/utils/asset_images.dart';

enum Tabs { home, voucher, wallet, settings }

extension TabExt on Tabs {
  String get name {
    switch (this) {
      case Tabs.home:
        return S.current.home;
      case Tabs.voucher:
        return S.current.voucher;
      case Tabs.wallet:
        return S.current.wallet;
      case Tabs.settings:
        return S.current.settings;

      default:
        return "";
    }
  }

  String get selectedIcon {
    switch (this) {
      case Tabs.home:
        return AssetResources.activeHomeIcon;
      case Tabs.voucher:
        return AssetResources.inactiveVoucherIcon;
      case Tabs.wallet:
        return AssetResources.inactiveWalletIcon;
      case Tabs.settings:
        return AssetResources.inactiveSettingIcon;
      default:
        return "";
    }
  }

  String get unSelectedIcon {
    switch (this) {
      case Tabs.home:
        return AssetResources.activeHomeIcon;
      case Tabs.voucher:
        return AssetResources.inactiveVoucherIcon;
      case Tabs.wallet:
        return AssetResources.inactiveWalletIcon;
      case Tabs.settings:
        return AssetResources.inactiveSettingIcon;
      default:
        return "";
    }
  }
}
