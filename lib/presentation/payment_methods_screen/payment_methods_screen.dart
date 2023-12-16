import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:abdullah_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 37.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWallet(context),
              SizedBox(height: 33.v),
              Text(
                "Payment Methods",
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 12.v),
              _buildCash(context),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                height: 42.v,
                width: 195.h,
                text: "Add payment method",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcBaselinePlus,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL9,
                buttonTextStyle: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 5.v),
            ],
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
        imagePath: ImageConstant.imgArrowDownBlack900,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 32.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Payment Methods",
        margin: EdgeInsets.only(
          top: 40.v,
          bottom: 9.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildWallet(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wallet",
          style: CustomTextStyles.titleMedium18,
        ),
        SizedBox(height: 14.v),
        Container(
          padding: EdgeInsets.all(12.h),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "PMU Cash",
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " 100.00",
                          style: theme.textTheme.headlineSmall,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftBlack900,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 6.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                      height: 42.v,
                      width: 122.h,
                      text: "Add funds",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 4.h),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgIcbaselineplusOnerrorcontainer,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnErrorContainerSemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCash(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgHeroiconsSolidCash,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 13.h,
            bottom: 3.v,
          ),
          child: Text(
            "Cash",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeftBlack900,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }
}
