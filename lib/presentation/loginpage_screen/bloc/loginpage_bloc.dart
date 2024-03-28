import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:lost_found/presentation/loginpage_screen/models/loginpage_model.dart';
import 'package:lost_found/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';
import 'package:lost_found/data/models/registerDeviceAuth/post_register_device_auth_req.dart';
import 'dart:async';
import 'package:lost_found/data/repository/repository.dart';
part 'loginpage_event.dart';
part 'loginpage_state.dart';

/// A bloc that manages the state of a Loginpage according to the event that is dispatched to it.
class LoginpageBloc extends Bloc<LoginpageEvent, LoginpageState> {
  LoginpageBloc(LoginpageState initialState) : super(initialState) {
    on<LoginpageInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<CreateRegisterEvent>(_callRegisterDeviceAuth);
  }

  final _repository = Repository();

  var postRegisterDeviceAuthResp = PostRegisterDeviceAuthResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginpageState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    LoginpageInitialEvent event,
    Emitter<LoginpageState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }

  /// Calls [https://nodedemo.dhiwise.co/device/auth/register] with the provided event and emits the state.
  ///
  /// The [CreateRegisterEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callRegisterDeviceAuth(
    CreateRegisterEvent event,
    Emitter<LoginpageState> emit,
  ) async {
    var postRegisterDeviceAuthReq = PostRegisterDeviceAuthReq();
    await _repository.registerDeviceAuth(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterDeviceAuthReq.toJson(),
    ).then((value) async {
      postRegisterDeviceAuthResp = value;
      _onRegisterDeviceAuthSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onRegisterDeviceAuthError();
    });
  }

  void _onRegisterDeviceAuthSuccess(
    PostRegisterDeviceAuthResp resp,
    Emitter<LoginpageState> emit,
  ) {}
  void _onRegisterDeviceAuthError() {
    //implement error method body...
  }
}
