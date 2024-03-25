import 'package:flutter/material.dart';
import '../models/login_screen_model.dart';

/// A provider class for the GetStartedScreen.
///
/// This provider manages the state of the GetStartedScreen, including the
/// current getStartedModelObj
class loginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController inputFieldController = TextEditingController();

  LoginScreenModel getStartedModelObj = LoginScreenModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    inputFieldController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
