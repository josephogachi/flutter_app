// ignore_for_file: must_be_immutable

part of 'loginpage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loginpage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginpageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Loginpage widget is first created.
class LoginpageInitialEvent extends LoginpageEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/register API.
class CreateRegisterEvent extends LoginpageEvent {
  CreateRegisterEvent();

  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginpageEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
