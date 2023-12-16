import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:abdullah_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application2/widgets/custom_icon_button.dart';
import 'package:abdullah_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 43.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 75.adaptSize,
                  width: 75.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse2775x75,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        radius: BorderRadius.circular(
                          37.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomIconButton(
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.outlineGrayF,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIonCamera,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Edit Profile",
                      style: CustomTextStyles.labelMediumBlack900Medium,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconamoonEditLight,
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26.v),
                _buildProfileName(context),
                SizedBox(height: 29.v),
                _buildPhoneNumber(context),
                SizedBox(height: 29.v),
                _buildEmail(context),
                SizedBox(height: 29.v),
                _buildAddress(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 32.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "My Profile",
        margin: EdgeInsets.only(
          top: 40.v,
          bottom: 9.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildProfileName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "Khalifa",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: phoneNumberController,
          hintText: "09927843852",
          textInputType: TextInputType.phone,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "khalifa.13@gmail.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Address",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 11.v),
        CustomTextFormField(
          controller: addressController,
          hintText: "Hitech Phnom Penh, 12000 street No: 21\nHouse No 12",
          textInputAction: TextInputAction.done,
          maxLines: 5,
        ),
      ],
    );
  }
}
