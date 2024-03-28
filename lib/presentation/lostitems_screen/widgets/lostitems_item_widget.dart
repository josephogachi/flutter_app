import '../models/lostitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lost_found/core/app_export.dart';

// ignore: must_be_immutable
class LostitemsItemWidget extends StatelessWidget {
  LostitemsItemWidget(
    this.lostitemsItemModelObj, {
    Key? key,
    this.navigateToViewitemPageOne1,
  }) : super(
          key: key,
        );

  LostitemsItemModel lostitemsItemModelObj;

  VoidCallback? navigateToViewitemPageOne1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToViewitemPageOne1?.call();
      },
      child: Container(
        padding: EdgeInsets.all(2.h),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1709,
              height: 50.v,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 4.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lostitemsItemModelObj.category!,
                    style: CustomTextStyles.soraBlack900,
                  ),
                  Text(
                    lostitemsItemModelObj.mobilePhone!,
                    style: theme.textTheme.labelMedium,
                  ),
                  Text(
                    lostitemsItemModelObj.modelType!,
                    style: CustomTextStyles.soraBlack900,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    lostitemsItemModelObj.samsungASix!,
                    style: CustomTextStyles.soraPrimary,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 9.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lostitemsItemModelObj.postedDate!,
                    style: CustomTextStyles.soraBlack900,
                  ),
                  Text(
                    lostitemsItemModelObj.duration!,
                    style: CustomTextStyles.soraPrimaryRegular,
                  ),
                  Text(
                    lostitemsItemModelObj.time!,
                    style: CustomTextStyles.soraBlack900,
                  ),
                  Text(
                    lostitemsItemModelObj.time1!,
                    style: CustomTextStyles.soraPrimaryRegular,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 29.h,
                top: 8.v,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lostitemsItemModelObj.postedBy!,
                    style: CustomTextStyles.soraBlack900,
                  ),
                  Text(
                    lostitemsItemModelObj.pascaliaRobi!,
                    style: CustomTextStyles.soraPrimarySemiBold,
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 47.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      lostitemsItemModelObj.viewItemButton!,
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
