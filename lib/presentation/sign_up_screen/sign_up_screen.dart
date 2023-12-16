import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdullah_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 55.v,
          ),
          child: Column(
            children: [
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
              SizedBox(height: 21.v),
              _buildConfirmPasswordSection(context),
              SizedBox(height: 52.v),
              CustomElevatedButton(
                text: "Sign in",
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Email",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 12.v),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm Password",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: confirmpasswordController,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
