import 'dart:async';
import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideDetailScreen extends StatelessWidget {
  RideDetailScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup103,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.v),
                _buildMap(context),
                SizedBox(height: 46.v),
                _buildRideDetail(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Container(
      height: 358.v,
      width: 255.h,
      margin: EdgeInsets.only(left: 16.h),
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildRideDetail(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL28,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Driver Is on the way",
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 142.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Muhammad",
                            style: CustomTextStyles.titleMediumSemiBold_1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgStar1,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                radius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "4.98",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Toyota",
                            style: CustomTextStyles.titleSmallBlack900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "LEB1856",
                            style: CustomTextStyles.titleSmallBlack900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 46.v,
                width: 114.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage561,
                      height: 39.v,
                      width: 78.h,
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4466,
                      height: 46.v,
                      width: 47.h,
                      radius: BorderRadius.circular(
                        7.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 98.h,
                margin: EdgeInsets.symmetric(vertical: 12.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgHeroiconsSolidCash,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Cash: 30",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 48.v,
                width: 46.h,
                padding: EdgeInsets.all(11.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFluentChat16Regular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: CustomIconButton(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFluentCall28Regular,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: CustomIconButton(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPhShareFat,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgBiPersonStanding,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pickup",
                      style: CustomTextStyles.labelLargeBlack900,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Star Shopping Center",
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeftBlack900,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: appTheme.black900.withOpacity(0.1),
              indent: 46.h,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcBaselinePlus,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Add Stop",
                    style: CustomTextStyles.labelLargeMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftBlack900,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: appTheme.black900.withOpacity(0.1),
              indent: 46.h,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAntDesignFlagFilled,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Destination",
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "New York Airport",
                        style: CustomTextStyles.labelLargeMedium,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftBlack900,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.black900.withOpacity(0.1),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcOutlineCancel,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "Cancel Ride",
                    style: CustomTextStyles.titleSmallOnError,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
