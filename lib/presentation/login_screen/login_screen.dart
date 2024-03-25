import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:joybox/core/utils/validation_functions.dart';
import 'package:joybox/widgets/custom_text_form_field.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';
import 'package:joybox/widgets/custom_icon_button.dart';
import 'models/login_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/login_screen_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LState createState() => LState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => loginProvider(),
      child: LoginScreen(),
    );
  }
}

class LState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
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
                        horizontal: 22.h,
                        vertical: 47.v,
                      ),
                                         decoration: AppDecoration.gradientWhiteAToAmberAWithBlur(context),
            
                      child: BackdropFilter(
                                                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Adjust the blur intensity
            
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 78.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 87.h),
                                child: Text(
                                  "lbl_login".tr,
                                  style: theme.textTheme.displayMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_email_address".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Selector<loginProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.emailController,
                              builder: (context, emailController, child) {
                                return CustomTextFormField(
                                  controller: emailController,
                                  hintText: "msg_helloworld_gmail_com".tr,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 20.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_password".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Consumer<loginProvider>(
                              builder: (context, provider, child) {
                                return CustomTextFormField(
                                  controller: provider.inputFieldController,
                                  textInputAction: TextInputAction.done,
                                  suffix: InkWell(
                                    onTap: () {
                                      provider.changePasswordVisibility();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 16.h, 18.v),
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
                            ),
                            SizedBox(height: 13.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.h),
                                child: Text(
                                  "msg_forgot_password".tr,
                                  style: CustomTextStyles.bodyMedium14,
                                ),
                              ),
                            ),
                            SizedBox(height: 22.v),
                            CustomElevatedButton(
                              onPressed: () => {
                                Navigator.pushNamed(context, AppRoutes.homepagePage),
                                print("Pressed")
                              },
                              width: 181.h,
                              text: "lbl_log_in2".tr,
                              buttonStyle: CustomButtonStyles.fillBlack,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700,
                            ),
                            SizedBox(height: 13.v),
                            RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: "msg_don_t_have_an_account2".tr,
        style: CustomTextStyles.bodyMediumb2000000,
      ),
      TextSpan(
        text: " ",
      ),
      TextSpan(
        text: "lbl_sign_up".tr,
        style: theme.textTheme.titleSmall?.copyWith(
          decoration: TextDecoration.underline, // Add underline style to the text
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.pushNamed(context, AppRoutes.signupscreen);
          },
      ),
    ],
  ),
  textAlign: TextAlign.left,
),

                            SizedBox(height: 20.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 47.adaptSize,
                                  width: 47.adaptSize,
                                  padding: EdgeInsets.all(13.h),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSocialIconFacebook,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: CustomIconButton(
                                    height: 47.adaptSize,
                                    width: 47.adaptSize,
                                    padding: EdgeInsets.all(13.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgContrast,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: CustomIconButton(
                                    height: 47.adaptSize,
                                    width: 47.adaptSize,
                                    padding: EdgeInsets.all(13.h),
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSocialIconApple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 80.v),
                            // CustomImageView(
                            //   imagePath: ImageConstant.imgGroup37145,
                            //   height: 70.v,
                            //   width: 60.h,
                            // ),
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
}
