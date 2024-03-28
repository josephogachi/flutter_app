import '../../../core/app_export.dart';

/// This class is used in the [lostitems_item_widget] screen.
class LostitemsItemModel {
  LostitemsItemModel({
    this.category,
    this.mobilePhone,
    this.modelType,
    this.samsungASix,
    this.postedDate,
    this.duration,
    this.time,
    this.time1,
    this.postedBy,
    this.pascaliaRobi,
    this.viewItemButton,
    this.id,
  }) {
    category = category ?? "Category:";
    mobilePhone = mobilePhone ?? "Mobile Phone";
    modelType = modelType ?? "Model | Type :";
    samsungASix = samsungASix ?? "Samsung A6";
    postedDate = postedDate ?? "Posted Date:";
    duration = duration ?? "Tuesday ,12th March 2024";
    time = time ?? "Time:";
    time1 = time1 ?? "11:15AM";
    postedBy = postedBy ?? "Posted By:";
    pascaliaRobi = pascaliaRobi ?? "Pascalia Robi";
    viewItemButton = viewItemButton ?? "View Item";
    id = id ?? "";
  }

  String? category;

  String? mobilePhone;

  String? modelType;

  String? samsungASix;

  String? postedDate;

  String? duration;

  String? time;

  String? time1;

  String? postedBy;

  String? pascaliaRobi;

  String? viewItemButton;

  String? id;
}
