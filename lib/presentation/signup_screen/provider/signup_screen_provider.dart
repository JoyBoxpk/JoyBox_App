import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_screen_model.dart';

/// A provider class for the GetStartedTwoScreen.
///
/// This provider manages the state of the GetStartedTwoScreen, including the
/// current getStartedTwoModelObj
class SignupScreenProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  SignupScreenModel getStartedTwoModelObj = SignupScreenModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  bool iacceptthetermsandprivacypolic = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    iacceptthetermsandprivacypolic = value;
    notifyListeners();
  }
}
