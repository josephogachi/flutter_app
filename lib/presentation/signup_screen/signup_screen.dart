import 'package:lost_found/widgets/app_bar/custom_app_bar.dart';
import 'package:lost_found/widgets/app_bar/appbar_leading_image.dart';
import 'package:lost_found/core/utils/validation_functions.dart';
import 'package:lost_found/widgets/custom_floating_text_field.dart';
import 'package:lost_found/widgets/custom_checkbox_button.dart';
import 'package:lost_found/widgets/custom_elevated_button.dart';
import 'package:lost_found/widgets/custom_text_form_field.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';
import 'bloc/signup_bloc.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.gray200,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginpage),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SizedBox(
                        height: SizeUtils.height,
                        child: Form(
                            key: _formKey,
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 7.v),
                                      Text("lbl_sign_up2".tr,
                                          style: theme.textTheme.headlineLarge),
                                      SizedBox(height: 32.v),
                                      Text("msg_create_an_account".tr,
                                          style: CustomTextStyles
                                              .titleLargeDeeppurple900),
                                      SizedBox(height: 29.v),
                                      _buildTextboxSeven(context),
                                      SizedBox(height: 30.v),
                                      _buildPassword(context),
                                      SizedBox(height: 41.v),
                                      _buildArrowdown(context),
                                      SizedBox(height: 44.v),
                                      _buildSignUp(context),
                                      Spacer(),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 54.h),
                                              child: Row(children: [
                                                Text("msg_already_have_an".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumManropeGray900),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtSignIn(context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text(
                                                            "lbl_sign_in2".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)))
                                              ]))),
                                      SizedBox(height: 1.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("lbl_email".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBluegray900))),
                                      SizedBox(height: 5.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Row(children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgLock,
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 1.v))
                                              ]))),
                                      SizedBox(height: 1.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      _buildEmail(context),
                                      SizedBox(height: 1.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("lbl_email".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBluegray900))),
                                      SizedBox(height: 1.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      _buildEmail1(context),
                                      SizedBox(height: 1.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      _buildEmail2(context),
                                      SizedBox(height: 1.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("lbl_email".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBluegray900)))
                                    ]))))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 46.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.fromLTRB(24.h, 22.v, 355.h, 22.v)));
  }

  /// Section Widget
  Widget _buildTextboxSeven(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("lbl_email".tr,
                      style: CustomTextStyles.titleMediumBluegray900)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
      return CustomFloatingTextField(
          controller: state.passwordController,
          labelText: "lbl_password".tr,
          labelStyle: theme.textTheme.bodyLarge!,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          obscureText: state.isShowPassword,
          prefix: Container(
              margin: EdgeInsets.only(left: 16.h, right: 8.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLockGray900,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 55.v),
          suffix: InkWell(
              onTap: () {
                context.read<SignupBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgHide,
                      height: 20.adaptSize,
                      width: 20.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 55.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildArrowdown(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: BlocSelector<SignupBloc, SignupState, bool?>(
            selector: (state) => state.arrowdown,
            builder: (context, arrowdown) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "msg_i_agree_with_terms".tr,
                  value: arrowdown,
                  textStyle: CustomTextStyles.bodyMediumManropeGray900,
                  onChange: (value) {
                    context
                        .read<SignupBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child:
                BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                    selector: (state) => state.emailController,
                    builder: (context, emailController) {
                      return CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_enter_email".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          });
                    })));
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child:
                BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                    selector: (state) => state.emailController1,
                    builder: (context, emailController1) {
                      return CustomTextFormField(
                          controller: emailController1,
                          hintText: "lbl_enter_email".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          });
                    })));
  }

  /// Section Widget
  Widget _buildEmail2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child:
                BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                    selector: (state) => state.emailController2,
                    builder: (context, emailController2) {
                      return CustomTextFormField(
                          controller: emailController2,
                          hintText: "lbl_enter_email".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          });
                    })));
  }

  /// Navigates to the loginpageScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginpageScreen,
    );
  }

  /// Navigates to the loginpageScreen when the action is triggered.
  onTapTxtSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginpageScreen,
    );
  }
}
