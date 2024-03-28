import 'package:lost_found/widgets/custom_elevated_button.dart';
import 'models/homepage_model.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';
import 'bloc/homepage_bloc.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageBloc>(
        create: (context) =>
            HomepageBloc(HomepageState(homepageModelObj: HomepageModel()))
              ..add(HomepageInitialEvent()),
        child: HomepageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 37.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle1701,
                        height: 56.v,
                        radius: BorderRadius.only(
                            topLeft: Radius.circular(7.h),
                            topRight: Radius.circular(1.h))),
                    SizedBox(height: 45.v),
                    _buildView(context),
                    SizedBox(height: 29.v),
                    Text("lbl_welcome_to".tr,
                        style: CustomTextStyles.titleLargeSoraPrimary),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 78.h),
                            child: Text("lbl_lost_found".tr,
                                style: CustomTextStyles
                                    .headlineLargeSoraDeeppurple900))),
                    SizedBox(height: 25.v),
                    Container(
                        width: 323.h,
                        margin: EdgeInsets.only(left: 10.h, right: 14.h),
                        child: Text("msg_lostfound_is_your".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: CustomTextStyles.bodyMediumBlack90013
                                .copyWith(height: 1.62))),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                        text: "lbl_sign_in".tr,
                        margin: EdgeInsets.only(right: 11.h),
                        onPressed: () {
                          onTapSignIn(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 313.v,
        width: 347.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 313.adaptSize,
                  width: 313.adaptSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(156.h),
                      border: Border.all(
                          color: theme.colorScheme.primary,
                          width: 3.h,
                          strokeAlign: strokeAlignOutside)))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse2,
              height: 214.adaptSize,
              width: 214.adaptSize,
              radius: BorderRadius.circular(107.h),
              alignment: Alignment.bottomLeft),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 137.adaptSize,
              width: 137.adaptSize,
              radius: BorderRadius.circular(68.h),
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 4.v, right: 32.h)),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse4,
              height: 113.adaptSize,
              width: 113.adaptSize,
              radius: BorderRadius.circular(56.h),
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 21.v))
        ]));
  }

  /// Navigates to the loginpageScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginpageScreen,
    );
  }
}
