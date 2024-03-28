import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lost_found/presentation/viewitem_pageone_screen/models/viewitem_pageone_model.dart';
import 'package:lost_found/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:lost_found/data/models/loginDeviceAuth/post_login_device_auth_req.dart';
import 'dart:async';
import 'package:lost_found/data/repository/repository.dart';
part 'viewitem_pageone_event.dart';
part 'viewitem_pageone_state.dart';

/// A bloc that manages the state of a ViewitemPageone according to the event that is dispatched to it.
class ViewitemPageoneBloc
    extends Bloc<ViewitemPageoneEvent, ViewitemPageoneState> {
  ViewitemPageoneBloc(ViewitemPageoneState initialState) : super(initialState) {
    on<ViewitemPageoneInitialEvent>(_onInitialize);
    on<CreateLoginEvent>(_callLoginDeviceAuth);
  }

  final _repository = Repository();

  var postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  _onInitialize(
    ViewitemPageoneInitialEvent event,
    Emitter<ViewitemPageoneState> emit,
  ) async {
    emit(state.copyWith(group355Controller: TextEditingController()));
  }

  /// Calls [https://nodedemo.dhiwise.co/device/auth/login] with the provided event and emits the state.
  ///
  /// The [CreateLoginEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callLoginDeviceAuth(
    CreateLoginEvent event,
    Emitter<ViewitemPageoneState> emit,
  ) async {
    var postLoginDeviceAuthReq = PostLoginDeviceAuthReq();
    await _repository.loginDeviceAuth(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginDeviceAuthReq.toJson(),
    ).then((value) async {
      postLoginDeviceAuthResp = value;
      _onLoginDeviceAuthSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onLoginDeviceAuthError();
    });
  }

  void _onLoginDeviceAuthSuccess(
    PostLoginDeviceAuthResp resp,
    Emitter<ViewitemPageoneState> emit,
  ) {}
  void _onLoginDeviceAuthError() {
    //implement error method body...
  }
}
