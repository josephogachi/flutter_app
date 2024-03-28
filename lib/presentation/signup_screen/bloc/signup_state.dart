// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.passwordController,
    this.emailController2,
    this.emailController1,
    this.isShowPassword = true,
    this.arrowdown = false,
    this.signupModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? emailController2;

  TextEditingController? emailController1;

  SignupModel? signupModelObj;

  bool isShowPassword;

  bool arrowdown;

  @override
  List<Object?> get props => [
        passwordController,
        emailController2,
        emailController1,
        isShowPassword,
        arrowdown,
        signupModelObj,
      ];

  SignupState copyWith({
    TextEditingController? passwordController,
    TextEditingController? emailController2,
    TextEditingController? emailController1,
    bool? isShowPassword,
    bool? arrowdown,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      passwordController: passwordController ?? this.passwordController,
      emailController2: emailController2 ?? this.emailController2,
      emailController1: emailController1 ?? this.emailController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      arrowdown: arrowdown ?? this.arrowdown,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
