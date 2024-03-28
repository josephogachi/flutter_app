import 'package:lost_found/widgets/app_bar/custom_app_bar.dart';
import 'package:lost_found/widgets/app_bar/appbar_leading_image.dart';
import 'package:lost_found/core/utils/validation_functions.dart';
import 'package:lost_found/widgets/custom_text_form_field.dart';
import 'package:lost_found/widgets/custom_elevated_button.dart';
import 'models/loginpage_model.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';
import 'bloc/loginpage_bloc.dart';

// ignore_for_file: must_be_immutable
class LoginpageScreen extends StatelessWidget {
  LoginpageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginpageBloc>(
        create: (context) =>
            LoginpageBloc(LoginpageState(loginpageModelObj: LoginpageModel()))
              ..add(LoginpageInitialEvent()),
        child: LoginpageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.primaryContainer,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginpage),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 11.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 23.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildAppBar(context),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgMegaCreator1,
                                                width: 107.h)
                                          ])),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 29.h, vertical: 47.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_hello".tr,
                                                style: theme
                                                    .textTheme.headlineLarge),
                                            SizedBox(height: 6.v),
                                            Text("lbl_welcome_back".tr,
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 32.v),
                                            Text("lbl_email".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 2.v),
                                            BlocSelector<
                                                    LoginpageBloc,
                                                    LoginpageState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.emailController,
                                                builder:
                                                    (context, emailController) {
                                                  return CustomTextFormField(
                                                      controller:
                                                          emailController,
                                                      hintText: "lbl_enter_email"
                                                          .tr,
                                                      textInputType:
                                                          TextInputType
                                                              .emailAddress,
                                                      prefix: Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  16.h,
                                                                  12.v,
                                                                  8.h,
                                                                  11.v),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgLock,
                                                              height:
                                                                  20.adaptSize,
                                                              width: 20
                                                                  .adaptSize)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight: 43.v),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "err_msg_please_enter_valid_email"
                                                              .tr;
                                                        }
                                                        return null;
                                                      },
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              top: 10.v,
                                                              right: 30.h,
                                                              bottom: 10.v));
                                                }),
                                            SizedBox(height: 17.v),
                                            Text("lbl_password".tr,
                                                style: theme
                                                    .textTheme.titleMedium),
                                            SizedBox(height: 2.v),
                                            BlocBuilder<LoginpageBloc,
                                                    LoginpageState>(
                                                builder: (context, state) {
                                              return CustomTextFormField(
                                                  controller:
                                                      state.passwordController,
                                                  hintText:
                                                      "lbl_enter_password".tr,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      margin: EdgeInsets.fromLTRB(
                                                          16.h,
                                                          12.v,
                                                          8.h,
                                                          11.v),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLockGray900,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 43.v),
                                                  suffix: InkWell(
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                LoginpageBloc>()
                                                            .add(ChangePasswordVisibilityEvent(
                                                                value: !state
                                                                    .isShowPassword));
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.fromLTRB(
                                                                  30.h,
                                                                  12.v,
                                                                  15.h,
                                                                  11.v),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgHide,
                                                              height: 20.adaptSize,
                                                              width: 20.adaptSize))),
                                                  suffixConstraints: BoxConstraints(maxHeight: 43.v),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "err_msg_please_enter_valid_password"
                                                          .tr;
                                                    }
                                                    return null;
                                                  },
                                                  obscureText: state.isShowPassword,
                                                  contentPadding: EdgeInsets.symmetric(vertical: 10.v));
                                            }),
                                            SizedBox(height: 5.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      resetpassword(context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 6.h),
                                                        child: Text(
                                                            "msg_forgot_password"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumManropeErrorContainer)))),
                                            SizedBox(height: 27.v),
                                            CustomElevatedButton(
                                                text: "lbl_sign_in".tr,
                                                onPressed: () {
                                                  onTapSignIn(context);
                                                }),
                                            SizedBox(height: 99.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 51.h),
                                                child: Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 1.v),
                                                      child: Text(
                                                          "msg_don_t_have_an_account"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumManropeGray900)),
                                                  GestureDetector(
                                                      onTap: () {
                                                        signup(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 7.h),
                                                          child: Text(
                                                              "lbl_sign_up".tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallErrorContainer)))
                                                ])),
                                            SizedBox(height: 5.v)
                                          ]))
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.only(left: 23.h, right: 356.h),
            onTap: () {
              onTapArrowOne(context);
            }));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapArrowOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageScreen,
    );
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/register API and triggers a [CreateRegisterEvent] event on the [LoginpageBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  resetpassword(BuildContext context) {
    context.read<LoginpageBloc>().add(
          CreateRegisterEvent(),
        );
  }

  /// Navigates to the lostitemsScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.lostitemsScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  signup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
