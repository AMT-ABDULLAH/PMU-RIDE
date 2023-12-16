import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainMenuDraweritem extends StatelessWidget {
  const MainMenuDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 329.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 31.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse27,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  radius: BorderRadius.circular(
                    23.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Khalifa",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Edit Profile",
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRiArrowLeftSLine,
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgBasilCrossSolid,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v),
                ),
              ],
            ),
            SizedBox(height: 32.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSolarHistory2Bold,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Ride History",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFluentPayment20Regular,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Payment Method",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSolarSettingsBroken,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Setting",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbol,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "FAQ",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHealthiconsCon,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Support",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "Logout",
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
