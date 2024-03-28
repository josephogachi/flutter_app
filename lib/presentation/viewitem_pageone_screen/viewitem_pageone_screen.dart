import 'package:lost_found/widgets/app_bar/custom_app_bar.dart';
import 'package:lost_found/widgets/app_bar/appbar_subtitle.dart';
import 'package:lost_found/widgets/app_bar/appbar_title.dart';
import 'package:lost_found/widgets/custom_text_form_field.dart';
import 'package:lost_found/widgets/custom_elevated_button.dart';
import 'package:lost_found/widgets/custom_outlined_button.dart';
import 'models/viewitem_pageone_model.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';
import 'bloc/viewitem_pageone_bloc.dart';

class ViewitemPageoneScreen extends StatelessWidget {
  const ViewitemPageoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ViewitemPageoneBloc>(
        create: (context) => ViewitemPageoneBloc(ViewitemPageoneState(
            viewitemPageoneModelObj: ViewitemPageoneModel()))
          ..add(ViewitemPageoneInitialEvent()),
        child: ViewitemPageoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 6.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1716,
                      height: 187.v,
                      radius: BorderRadius.circular(24.h)),
                  SizedBox(height: 18.v),
                  Divider(indent: 1.h, endIndent: 5.h),
                  SizedBox(height: 6.v),
                  _buildModelType(context),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("msg_proof_of_ownership".tr,
                              style: CustomTextStyles.bodyMediumBlack900))),
                  SizedBox(height: 3.v),
                  _buildGroup355(context),
                  SizedBox(height: 5.v),
                  _buildVerify(context),
                  SizedBox(height: 6.v),
                  Text("msg_after_moderation".tr,
                      style: CustomTextStyles.bodySmall10),
                  SizedBox(height: 16.v),
                  Divider(indent: 4.h),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_posted_by".tr,
                              style: theme.textTheme.bodyMedium))),
                  SizedBox(height: 8.v),
                  _buildCONTACT1(context),
                  SizedBox(height: 18.v),
                  _buildBACK(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 74.v,
        title: Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "lbl_category".tr,
                  margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
              AppbarTitle(
                  text: "lbl_mobile_phone".tr,
                  margin: EdgeInsets.only(left: 9.h))
            ])));
  }

  /// Section Widget
  Widget _buildModelType(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_model_type2".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 7.v),
                    Text("lbl_samsung_a6".tr,
                        style: CustomTextStyles.titleSmallSoraBlack900SemiBold)
                  ])),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("lbl_posted_date2".tr,
                        style: theme.textTheme.bodyMedium)),
                SizedBox(height: 10.v),
                Text("msg_tuesday_12th_march_2024".tr,
                    style: theme.textTheme.bodySmall)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildGroup355(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 4.h),
        child: BlocSelector<ViewitemPageoneBloc, ViewitemPageoneState,
                TextEditingController?>(
            selector: (state) => state.group355Controller,
            builder: (context, group355Controller) {
              return CustomTextFormField(
                  controller: group355Controller,
                  hintText: "msg_e_g_description2".tr,
                  textInputAction: TextInputAction.done,
                  maxLines: 9,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 13.v),
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                  fillColor: appTheme.whiteA700);
            }));
  }

  /// Section Widget
  Widget _buildVerify(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_verify".tr,
        buttonTextStyle: CustomTextStyles.bodyLargeSoraOnPrimary_1,
        onPressed: () {
          verify(context);
        });
  }

  /// Section Widget
  Widget _buildCONTACT(BuildContext context) {
    return CustomElevatedButton(
        height: 37.v,
        width: 120.h,
        text: "lbl_contact".tr,
        margin: EdgeInsets.only(top: 10.v, right: 3.h, bottom: 11.v),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimary,
        onPressed: () {
          requestContactPermission(context);
        });
  }

  /// Section Widget
  Widget _buildCONTACT1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h, right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(27.h),
                  margin: EdgeInsets.only(bottom: 4.v)),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, top: 17.v, bottom: 22.v),
                  child: Text("lbl_pascalia_robi".tr,
                      style: CustomTextStyles.titleSmallSoraBlack900)),
              Spacer(),
              _buildCONTACT(context)
            ]));
  }

  /// Section Widget
  Widget _buildBACK(BuildContext context) {
    return CustomOutlinedButton(
        width: 90.h,
        text: "lbl_back".tr,
        onPressed: () {
          onTapBACK(context);
        });
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/login API and triggers a [CreateLoginEvent] event on the [ViewitemPageoneBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  verify(BuildContext context) {
    context.read<ViewitemPageoneBloc>().add(
          CreateLoginEvent(),
        );
  }

  /// Requests the user's permission to access the device's contacts and retrieves
  /// the list of contacts, if permission is granted.
  ///
  /// Returns a [Future] that completes with a list of [Contact] objects if
  /// permission is granted and contacts are available, otherwise an empty list.
  requestContactPermission(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.contacts);
    List<Contact> contactList = [];
    if (await PermissionManager.isPermissionGranted(Permission.contacts)) {
      contactList = await FlutterContacts.getContacts();
    }
  }

  /// Navigates to the lostitemsScreen when the action is triggered.
  onTapBACK(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lostitemsScreen,
    );
  }
}
