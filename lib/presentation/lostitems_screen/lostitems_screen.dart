import 'package:lost_found/widgets/custom_search_view.dart';
import 'widgets/lostitems_item_widget.dart';
import 'models/lostitems_item_model.dart';
import 'models/lostitems_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lost_found/widgets/custom_text_form_field.dart';
import 'package:lost_found/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';
import 'bloc/lostitems_bloc.dart';

class LostitemsScreen extends StatelessWidget {
  const LostitemsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LostitemsBloc>(
        create: (context) =>
            LostitemsBloc(LostitemsState(lostitemsModelObj: LostitemsModel()))
              ..add(LostitemsInitialEvent()),
        child: LostitemsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 27.v),
                child: Column(children: [
                  _buildJosephOgachi(context),
                  SizedBox(height: 13.v),
                  BlocSelector<LostitemsBloc, LostitemsState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search_item".tr);
                      }),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("lbl_reported_items".tr,
                              style: CustomTextStyles.bodyMediumBlack900_1))),
                  SizedBox(height: 5.v),
                  _buildLostItems(context),
                  SizedBox(height: 10.v),
                  Text("msg_post_a_found_item".tr,
                      style: CustomTextStyles.labelMediumBlack900SemiBold),
                  SizedBox(height: 6.v),
                  _buildGroup355(context),
                  SizedBox(height: 13.v),
                  CustomElevatedButton(
                      text: "lbl_post".tr,
                      margin: EdgeInsets.only(left: 5.h, right: 3.h),
                      buttonTextStyle:
                          CustomTextStyles.bodyLargeSoraOnPrimary_1,
                      onPressed: () {
                        sure(context);
                      }),
                  SizedBox(height: 23.v),
                  Text("lbl_exit".tr, style: CustomTextStyles.titleSmallSora),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildJosephOgachi(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              Text("lbl_joseph_ogachi".tr,
                  style: CustomTextStyles.titleMediumSoraDeeppurple900),
              Text("msg_edit_contact_information".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1)
            ]));
  }

  /// Section Widget
  Widget _buildLostItems(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: BlocSelector<LostitemsBloc, LostitemsState, LostitemsModel?>(
            selector: (state) => state.lostitemsModelObj,
            builder: (context, lostitemsModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 13.v);
                  },
                  itemCount: lostitemsModelObj?.lostitemsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    LostitemsItemModel model =
                        lostitemsModelObj?.lostitemsItemList[index] ??
                            LostitemsItemModel();
                    return LostitemsItemWidget(model,
                        navigateToViewitemPageOne1: () {
                      navigateToViewitemPageOne1(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildGroup355(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 8.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: DottedBorder(
                      color: theme.colorScheme.primary,
                      padding: EdgeInsets.only(
                          left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                      strokeWidth: 1.h,
                      radius: Radius.circular(6),
                      borderType: BorderType.RRect,
                      dashPattern: [2, 2],
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 121.h, vertical: 10.v),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: GestureDetector(
                              onTap: () {
                                requestCameraGalleryPermission(context);
                              },
                              child: Text("lbl_upload_image".tr,
                                  style:
                                      CustomTextStyles.labelMediumBlack900))))),
              SizedBox(height: 5.v),
              Text("msg_item_description".tr,
                  style: CustomTextStyles.labelSmallBlack900),
              SizedBox(height: 1.v),
              BlocSelector<LostitemsBloc, LostitemsState,
                      TextEditingController?>(
                  selector: (state) => state.group355Controller,
                  builder: (context, group355Controller) {
                    return CustomTextFormField(
                        controller: group355Controller,
                        hintText: "msg_e_g_description".tr,
                        textInputAction: TextInputAction.done,
                        maxLines: 7,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 7.v),
                        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                        fillColor: appTheme.whiteA700);
                  }),
              SizedBox(height: 3.v)
            ]));
  }

  /// Navigates to the viewitemPageoneScreen when the action is triggered.
  navigateToViewitemPageOne1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewitemPageoneScreen,
    );
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  requestCameraGalleryPermission(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  /// Displays a snackBar message when the action is triggered.
  /// The snackbar displays the message `Item Posted Successfully!`.
  sure(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Item Posted Successfully!")));
  }
}
