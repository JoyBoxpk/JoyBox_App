import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:joybox/core/utils/validation_functions.dart';
import 'package:joybox/widgets/custom_text_form_field.dart';
import 'package:joybox/widgets/custom_checkbox_button.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';
import 'package:joybox/widgets/custom_icon_button.dart';
import 'models/signup_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/signup_screen_provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupScreenState createState() => SignupScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupScreenProvider(),
      child: SignupScreen(),
    );
  }
}

class SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4490852x393,
                    height: 852.v,
                    width: 393.h,
                    alignment: Alignment.center,
                  ),
            
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 364.v,
                    width: 344.h,
                    alignment: Alignment.bottomRight,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 19.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 21.h,
                        vertical: 20.v,
                      ),
                                         decoration: AppDecoration.gradientWhiteAToAmberAWithBlur(context),
            
                        //borderRadius: BorderRadiusStyle.roundedBorder27,
                      
                      child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Adjust the blur intensity

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 105.v),
                            Text(
                              "lbl_signup2".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            SizedBox(height: 23.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_email".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            SizedBox(height: 6.v),
                            _buildEmail(context),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_password".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            _buildPassword(context),
                            SizedBox(height: 23.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_confirm_password".tr,
                                style: CustomTextStyles.bodyMedium14,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            _buildConfirmpassword(context),
                            SizedBox(height: 22.v),
                            _buildIacceptthetermsandprivacypolic(context),
                            SizedBox(height: 22.v),
                            _buildSignUp(context),
                            SizedBox(height: 31.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 40, // Increase the height
                                  width: 40,  // Increase the width
                                  padding: EdgeInsets.all(13.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgSocialIconFacebook,
                                    color: Colors.black,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: CustomIconButton(
                                    height: 40, // Increase the height
                                    width: 40,  // Increase the width
                                    padding: EdgeInsets.all(13.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgContrast,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: CustomIconButton(
                                    height: 40, // Increase the height
                                    width: 40,  // Increase the width
                                    padding: EdgeInsets.all(13.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgSocialIconApple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                                    
                            SizedBox(height: 30.v),
                            RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: "msg_already_have_an2".tr,
        style: CustomTextStyles.bodyMediumb2000000,
      ),
      TextSpan(
        text: " ",
      ),
      TextSpan(
        text: "lbl_log_in2".tr,
        style: theme.textTheme.titleSmall?.copyWith(
          decoration: TextDecoration.underline, // Add underline style to the text
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          },
      ),
    ],
  ),
  textAlign: TextAlign.left,
),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignupScreenProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailController,
      builder: (context, emailController, child) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_your_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignupScreenProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          controller: provider.passwordController,
          suffix: InkWell(
            onTap: () {
              provider.changePasswordVisibility();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          obscureText: provider.isShowPassword,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Consumer<SignupScreenProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          controller: provider.confirmpasswordController,
          hintText: "lbl_repeat_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              provider.changePasswordVisibility1();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 21.v, 18.h, 22.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 13.v,
                width: 17.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword1,
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 18.v,
            bottom: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIacceptthetermsandprivacypolic(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Selector<SignupScreenProvider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.iacceptthetermsandprivacypolic,
        builder: (context, iacceptthetermsandprivacypolic, child) {
          return CustomCheckboxButton(
            text: "msg_i_accept_the_terms".tr,
            value: iacceptthetermsandprivacypolic,
            onChange: (value) {
              context.read<SignupScreenProvider>().changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      width: 181.h,
      text: "lbl_sign_up2".tr,
      buttonStyle: CustomButtonStyles.fillBlack,
      buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
    );
  }
}
