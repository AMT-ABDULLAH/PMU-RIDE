import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EconomycomponentItemWidget extends StatelessWidget {
  const EconomycomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 80.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 23.v,
            width: 43.h,
          ),
          SizedBox(height: 8.v),
          Text(
            "Economy",
            style: CustomTextStyles.titleSmallBlack900_1,
          ),
        ],
      ),
    );
  }
}
