import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/lostitems_item_model.dart';
import 'package:lost_found/presentation/lostitems_screen/models/lostitems_model.dart';
part 'lostitems_event.dart';
part 'lostitems_state.dart';

/// A bloc that manages the state of a Lostitems according to the event that is dispatched to it.
class LostitemsBloc extends Bloc<LostitemsEvent, LostitemsState> {
  LostitemsBloc(LostitemsState initialState) : super(initialState) {
    on<LostitemsInitialEvent>(_onInitialize);
  }

  List<LostitemsItemModel> fillLostitemsItemList() {
    return [
      LostitemsItemModel(
          category: "Category:",
          mobilePhone: "Mobile Phone",
          modelType: "Model | Type :",
          samsungASix: "Samsung A6",
          postedDate: "Posted Date:",
          duration: "Tuesday ,12th March 2024",
          time: "Time:",
          time1: "11:15AM",
          postedBy: "Posted By:",
          pascaliaRobi: "Pascalia Robi",
          viewItemButton: "View Item"),
      LostitemsItemModel(
          category: "Category:",
          mobilePhone: "Mobile Phone",
          modelType: "Model | Type :",
          samsungASix: "Samsung A6",
          postedDate: "Posted Date:",
          duration: "Tuesday ,12th March 2024",
          time: "Time:",
          time1: "11:15AM",
          postedBy: "Posted By:",
          pascaliaRobi: "Pascalia Robi",
          viewItemButton: "View Item"),
      LostitemsItemModel(
          category: "Category:",
          mobilePhone: "Mobile Phone",
          modelType: "Model | Type :",
          samsungASix: "Samsung A6",
          postedDate: "Posted Date:",
          duration: "Tuesday ,12th March 2024",
          time: "Time:",
          time1: "11:15AM",
          postedBy: "Posted By:",
          pascaliaRobi: "Pascalia Robi",
          viewItemButton: "View Item"),
      LostitemsItemModel(
          category: "Category:",
          mobilePhone: "Mobile Phone",
          modelType: "Model | Type :",
          samsungASix: "Samsung A6",
          postedDate: "Posted Date:",
          duration: "Tuesday ,12th March 2024",
          time: "Time:",
          time1: "11:15AM",
          postedBy: "Posted By:",
          pascaliaRobi: "Pascalia Robi",
          viewItemButton: "View Item")
    ];
  }

  _onInitialize(
    LostitemsInitialEvent event,
    Emitter<LostitemsState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(),
        group355Controller: TextEditingController()));
    emit(state.copyWith(
        lostitemsModelObj: state.lostitemsModelObj
            ?.copyWith(lostitemsItemList: fillLostitemsItemList())));
  }
}
