import 'package:ajeesh_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ajeesh_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:ajeesh_s_application3/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:ajeesh_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

class MobileNumber001Screen extends StatelessWidget {
  MobileNumber001Screen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 48.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Please enter your mobile number",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 171.h,
                      child: Text(
                        "You’ll receive a 6 digit code\nto verify next.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 28.v),
                    CustomPhoneNumber(
                      country: selectedCountry,
                      controller: phoneNumberController,
                      onTap: (Country value) {
                        selectedCountry = value;
                      },
                    ),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "CONTINUE",
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
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
        imagePath: ImageConstant.imgCombinedShape,
        margin: EdgeInsets.fromLTRB(21.h, 5.v, 326.h, 6.v),
      ),
    );
  }
}
