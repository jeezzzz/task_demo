import 'package:ajeesh_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ajeesh_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:ajeesh_s_application3/widgets/custom_pin_code_text_field.dart';
import 'package:ajeesh_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

class VerfiyPhoneScreen extends StatelessWidget {
  const VerfiyPhoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              Text(
                "Verify Phone",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 5.v),
              Text(
                "Code is sent to 8094508485",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 16.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn’t receive the code? ",
                      style: CustomTextStyles.bodyMediumff6a6c7b,
                    ),
                    TextSpan(
                      text: "Request Again",
                      style: CustomTextStyles.bodyMediumff061d28,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "VERIFY AND CONTINUE",
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCombinedShapeOnprimarycontainer,
        margin: EdgeInsets.fromLTRB(20.h, 5.v, 323.h, 6.v),
      ),
    );
  }
}
