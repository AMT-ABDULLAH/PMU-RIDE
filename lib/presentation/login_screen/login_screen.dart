import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdullah_s_application2/widgets/custom_outlined_button.dart';
import 'package:abdullah_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(14.h),
          child: Column(
            children: [
              SizedBox(height: 40.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage39,
                height: 97.v,
                width: 184.h,
              ),
              SizedBox(height: 13.v),
              Text(
                "PMU Ride Booking",
                style: CustomTextStyles.titleMediumExtraBold,
              ),
              SizedBox(height: 47.v),
              _buildEmailSection(context),
              SizedBox(height: 21.v),
              _buildPasswordSection(context),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: CustomTextStyles.bodySmallGray600,
                ),
              ),
              SizedBox(height: 45.v),
              CustomElevatedButton(
                text: "Log in",
                buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer_1,
              ),
              SizedBox(height: 22.v),
              Text(
                "Or",
                style: CustomTextStyles.labelLargePoppinsBlack900,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 111.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogosGoogleIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Spacer(
                      flex: 50,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLogosFacebook,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Spacer(
                      flex: 50,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLogosTwitter,
                      height: 24.v,
                      width: 27.h,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 62.v),
              Text(
                "Dont have an account?",
                style: CustomTextStyles.labelLargeGray600,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSignUpSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: CustomTextStyles.bodyLargePoppins,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: emailController,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpSection(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign up",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 28.v,
      ),
    );
  }
}
