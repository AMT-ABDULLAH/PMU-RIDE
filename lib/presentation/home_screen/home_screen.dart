import 'dart:async';
import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:abdullah_s_application2/widgets/custom_floating_button.dart';
import 'package:abdullah_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 18.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15.v),
                _buildMapSection(context),
                Spacer(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildWhereToSection(context),
        floatingActionButton: _buildFloatingActionButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 357.v,
      width: 358.h,
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
  Widget _buildWhereToSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 18.v,
      ),
      decoration: BoxDecoration(
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
          Padding(
            padding: EdgeInsets.only(top: 22.v),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Where to?",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButtonSection(BuildContext context) {
    return CustomFloatingButton(
      height: 33,
      width: 33,
      backgroundColor: theme.colorScheme.onErrorContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgBxCurrentLocation,
        height: 16.5.v,
        width: 16.5.h,
      ),
    );
  }
}
