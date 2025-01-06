import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:lottie/lottie.dart';
import '../generated/l10n.dart';
import '../utils/constants/image_strings.dart';

class CustomUI {
  static loader({required BuildContext context}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
            child: Lottie.asset(AssetRes.airplainLoading, height: 30.h));
      },
    );
  }

  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  static Widget simpleLoader() {
    return Center(child: Lottie.asset(AssetRes.airplainLoading, width: 100.w));
  }  static Widget simpleFailure() {
   return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(AssetRes.noData, height:AppSizes.productItemHeight),
            SizedBox(height: AppSizes.spaceBtwItems,),
            Text(S.current.error),

          ],
        ));  }

  static Widget searchWidget() {
    return Padding(
      padding: EdgeInsets.only(top: 100.h),
      child: Lottie.asset(AssetRes.searchICon, width: 100.w),
    );
  }

  static Widget tryLater() {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.current.tryLater),
        Lottie.asset(AssetRes.normalLoading, width: 100.w),
      ],
    ));
  } static Widget noData() {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(AssetRes.noData, height:AppSizes.productItemHeight),
        SizedBox(height: AppSizes.spaceBtwItems,),
        Text(S.current.noData),

      ],
    ));
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      snackBarSuccess({required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(S.current.done),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
    ));
  }
}
