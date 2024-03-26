import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/widgets/common_social_icon_button.dart';
import '../../widgets/common_elevated_button.dart';
import '../../widgets/common_text_formfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = 'signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 0,
              bottom: -60,
              child: Image.asset("assets/images/img2_login_screen.png"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.050,
                  vertical: screenHeight * 0.030),
              height: screenHeight * 0.890,
              margin: EdgeInsets.only(
                  left: screenWidth * 0.040, right: screenWidth * 0.040),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2099AA),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
              child: _LoginForm(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _LoginForm({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SignUp",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: screenHeight * 0.040),
          _buildFieldText("Email"),
          SizedBox(height: screenHeight * 0.005),
          CommonTextFormField(
            hintText: "Email address",
            suffixIcon: Icon(
              Icons.check_circle,
              color: Colors.red,
              size: 20.0,
            ),
          ),
          SizedBox(height: screenHeight * 0.020),
          _buildFieldText("Password"),
          SizedBox(height: screenHeight * 0.005),
          CommonTextFormField(
            hintText: "Password",
            isPassword: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility_off_outlined,
                size: 20.0,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.020),
          _buildFieldText("Confirm Password"),
          SizedBox(height: screenHeight * 0.005),
          CommonTextFormField(
            hintText: "Password",
            isPassword: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility_outlined,
                size: 20.0,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.016),
          Row(
            children: [
              Container(
                width: screenWidth * 0.036,
                height: screenHeight * 0.020,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 14.0),
              ),
              SizedBox(width: screenWidth * 0.020),
              Text(
                "I accept the terms and policy".tr,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.025),
          CommonElevatedButton(
            onPressed: () {},
            label: "Signup",
          ),
          SizedBox(height: screenHeight * 0.025),
          SizedBox(height: screenHeight * 0.030),
          _SocialRow(),
          SizedBox(height: screenHeight * 0.040),
          _buildRichText(context),
        ],
      ),
    );
  }

  Widget _buildFieldText(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account?".tr,
            style: CustomTextStyles.bodyMediumb2000000,
          ),
          TextSpan(
            text: " ",
          ),
          TextSpan(
            text: "Log in".tr,
            style: TextStyle(
              color: Color(0xFF0EE452E),
              fontSize: 12.0,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, AppRoutes.signupscreen);
              },
          ),
        ],
      ),
    );
  }

  Widget _SocialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonSocialIconButton(imagePath: ImageConstant.imgSocialIconFacebook),
        SizedBox(width: screenWidth * 0.018),
        CommonSocialIconButton(imagePath: ImageConstant.imgContrast),
        SizedBox(width: screenWidth * 0.018),
        CommonSocialIconButton(imagePath: ImageConstant.imgSocialIconApple),
      ],
    );
  }
}
