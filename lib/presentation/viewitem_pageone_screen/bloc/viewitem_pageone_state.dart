// ignore_for_file: must_be_immutable

part of 'viewitem_pageone_bloc.dart';

/// Represents the state of ViewitemPageone in the application.
class ViewitemPageoneState extends Equatable {
  ViewitemPageoneState({
    this.group355Controller,
    this.viewitemPageoneModelObj,
  });

  TextEditingController? group355Controller;

  ViewitemPageoneModel? viewitemPageoneModelObj;

  @override
  List<Object?> get props => [
        group355Controller,
        viewitemPageoneModelObj,
      ];

  ViewitemPageoneState copyWith({
    TextEditingController? group355Controller,
    ViewitemPageoneModel? viewitemPageoneModelObj,
  }) {
    return ViewitemPageoneState(
      group355Controller: group355Controller ?? this.group355Controller,
      viewitemPageoneModelObj:
          viewitemPageoneModelObj ?? this.viewitemPageoneModelObj,
    );
  }
}
