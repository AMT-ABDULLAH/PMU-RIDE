import '../add_location_and_edit_bottomsheet/widgets/economycomponent_item_widget.dart';
import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdullah_s_application2/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddLocationAndEditBottomsheet extends StatelessWidget {
  AddLocationAndEditBottomsheet({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return _buildScrollViewSection(context);
  }

  /// Section Widget
  Widget _buildDetailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    bottom: 8.v,
                  ),
                  child: CustomRadioButton(
                    text: "Star Shopping Center",
                    value: "Star Shopping Center",
                    groupValue: radioGroup,
                    onChange: (value) {
                      radioGroup = value;
                    },
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 41.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.black900.withOpacity(0.56),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAkarIconsEdit,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    bottom: 8.v,
                  ),
                  child: CustomRadioButton(
                    text: "New York Airport",
                    value: "New York Airport",
                    groupValue: radioGroup1,
                    onChange: (value) {
                      radioGroup1 = value;
                    },
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 41.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.black900.withOpacity(0.56),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAkarIconsEdit,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollViewSection(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL28,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 52.h,
              child: Divider(
                color: appTheme.black900.withOpacity(0.35),
              ),
            ),
            SizedBox(height: 21.v),
            SizedBox(
              height: 76.v,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 35.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return EconomycomponentItemWidget();
                },
              ),
            ),
            SizedBox(height: 22.v),
            _buildDetailSection(context),
            SizedBox(height: 22.v),
            CustomElevatedButton(
              text: "Done",
              buttonStyle: CustomButtonStyles.fillPrimaryTL24,
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }
}
