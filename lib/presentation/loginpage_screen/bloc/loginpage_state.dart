// ignore_for_file: must_be_immutable

part of 'loginpage_bloc.dart';

/// Represents the state of Loginpage in the application.
class LoginpageState extends Equatable {
  LoginpageState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginpageModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginpageModel? loginpageModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginpageModelObj,
      ];

  LoginpageState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginpageModel? loginpageModelObj,
  }) {
    return LoginpageState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginpageModelObj: loginpageModelObj ?? this.loginpageModelObj,
    );
  }
}
