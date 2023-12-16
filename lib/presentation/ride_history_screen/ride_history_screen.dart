import '../ride_history_screen/widgets/userprofilelist_item_widget.dart';
import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdullah_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:abdullah_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({Key? key})
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
            vertical: 9.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildButtonRow(context),
              SizedBox(height: 24.v),
              _buildUserProfileList(context),
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
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 32.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Ride History",
        margin: EdgeInsets.only(
          top: 40.v,
          bottom: 9.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            height: 43.v,
            text: "Completed",
            margin: EdgeInsets.only(right: 17.h),
            buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            height: 43.v,
            text: "Cancel",
            margin: EdgeInsets.only(left: 17.h),
            buttonStyle: CustomButtonStyles.fillBlack,
            buttonTextStyle: CustomTextStyles.titleMediumBlack900SemiBold,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 14.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return UserprofilelistItemWidget();
      },
    );
  }
}
