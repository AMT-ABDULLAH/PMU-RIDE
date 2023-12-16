import 'package:abdullah_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.fillBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dec 10, 18:45pm",
                style: CustomTextStyles.labelMediumBlack900,
              ),
              SizedBox(height: 5.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 69.v,
                    width: 18.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hilton Road, N9 Bristol United Kingdom",
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 35.v),
                        Text(
                          "Science Lab Bus Station",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            height: 89.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Travel Time",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "1h 0min",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 29.v),
                Text(
                  "Fare",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 1.v),
                Text(
                  "30",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
