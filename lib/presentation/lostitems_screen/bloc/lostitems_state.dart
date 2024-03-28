// ignore_for_file: must_be_immutable

part of 'lostitems_bloc.dart';

/// Represents the state of Lostitems in the application.
class LostitemsState extends Equatable {
  LostitemsState({
    this.searchController,
    this.group355Controller,
    this.lostitemsModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? group355Controller;

  LostitemsModel? lostitemsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        group355Controller,
        lostitemsModelObj,
      ];

  LostitemsState copyWith({
    TextEditingController? searchController,
    TextEditingController? group355Controller,
    LostitemsModel? lostitemsModelObj,
  }) {
    return LostitemsState(
      searchController: searchController ?? this.searchController,
      group355Controller: group355Controller ?? this.group355Controller,
      lostitemsModelObj: lostitemsModelObj ?? this.lostitemsModelObj,
    );
  }
}
