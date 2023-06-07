import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/modules/home/cubit/home_cubit.dart';
import 'package:moniepoint_test/modules/home/models/banner.dart';
import 'package:moniepoint_test/modules/home/widgets/banner/banner.dart';
import 'package:moniepoint_test/modules/home/widgets/banner/banner_shimmer.dart';
import 'package:moniepoint_test/shared/utils/dot_indicator.dart';

class BannerView extends StatefulWidget {
  const BannerView({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  Timer? timer;
  bool isLoading = true;
  int _currentIndex = 0;
  List<BannerModel> banners = [];
  final PageController _controller = PageController();

  startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (_currentIndex < banners.length && _controller.hasClients) {
          _controller.animateToPage(
            _currentIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
          _currentIndex++;
        } else {
          if (_controller.hasClients) _controller.jumpToPage(0);
          _currentIndex = 0;

          cancelTimer();
        }
      },
    );
  }

  cancelTimer() {
    if (banners.isNotEmpty) {
      timer?.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getIt<HomeCubit>().fetchBanners();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    cancelTimer();
    _currentIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: getIt<HomeCubit>(),
      listener: (_, state) {
        if (state is BannerLoading) {
          isLoading = true;
        }
        if (state is BannerLoaded) {
          isLoading = false;
          banners = state.banners;
          if (banners.isNotEmpty) {
            startTimer();
          }
        }

        if (state is BannerError) {
          isLoading = false;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      builder: (_, state) {
        return isLoading
            ? const BannerShimmer()
            : Stack(
                // alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 300.h,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: banners.length,
                      itemBuilder: (_, index) => BannerWidget(
                        banner: banners[index],
                      ),
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    left: 330.w,
                    top: 110.h,
                    child: Visibility(
                      visible: banners.length > 1,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            getIt<List<BannerModel>>().asMap().length,
                            (index) => DotIndicator(
                                isActive:
                                    (_currentIndex % banners.length) == index
                                        ? true
                                        : false),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
