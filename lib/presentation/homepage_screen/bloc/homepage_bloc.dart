import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lost_found/presentation/homepage_screen/models/homepage_model.dart';
part 'homepage_event.dart';
part 'homepage_state.dart';

/// A bloc that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(HomepageState initialState) : super(initialState) {
    on<HomepageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomepageInitialEvent event,
    Emitter<HomepageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginpageScreen,
      );
    });
  }
}
