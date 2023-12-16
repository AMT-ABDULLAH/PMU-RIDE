import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RideFairAndTimeBottomsheet extends StatelessWidget {
  const RideFairAndTimeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 52.h,
              child: Divider(
                color: appTheme.black900.withOpacity(0.35),
              ),
            ),
          ),
          SizedBox(height: 22.v),
          Row(
            children: [
              Container(
                height: 64.v,
                width: 102.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage561,
                  height: 42.v,
                  width: 84.h,
                  alignment: Alignment.bottomRight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 23.v,
                  bottom: 22.v,
                ),
                child: Text(
                  "Premium Car",
                  style: CustomTextStyles.titleSmallBluegray90001,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 11.v,
                  bottom: 6.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estimated time",
                      style: CustomTextStyles.bodySmallGray700,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "10 minutes",
                      style: CustomTextStyles.titleSmallBluegray900,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: SizedBox(
              height: 26.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 20.v,
                width: 14.h,
                margin: EdgeInsets.only(
                  top: 11.v,
                  bottom: 29.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your location",
                      style: CustomTextStyles.bodySmallGray700,
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: 195.h,
                      child: Text(
                        "B456B Hilton Road, N9 Bristol\nUnited Kingdom",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallBluegray900.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 34.v),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "12",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "20 km",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "Book Now",
                  margin: EdgeInsets.only(left: 14.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
