import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TwentytwoItemWidget extends StatelessWidget {
  const TwentytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 19.v),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 11.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipper",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 151.h,
                  child: Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
