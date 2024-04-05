import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ProfileselectionItemWidget extends StatelessWidget {
  const ProfileselectionItemWidget({Key? key})
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
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 19.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              border: Border.all(
                color: appTheme.black900,
                width: 1.h,
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
