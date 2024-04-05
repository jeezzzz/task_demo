import 'widgets/twentytwo_item_widget.dart';
import 'package:ajeesh_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

class ProfileSelectionSelectScreen extends StatelessWidget {
  const ProfileSelectionSelectScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 48.v),
              Text(
                "Please select your profile",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.v),
              _buildTwentyTwo(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "CONTINUE",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 24.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return TwentytwoItemWidget();
      },
    );
  }
}
