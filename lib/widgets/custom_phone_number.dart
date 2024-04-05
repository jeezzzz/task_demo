import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:country_pickers/country.dart';
import 'package:ajeesh_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 12.v,
                bottom: 12.v,
              ),
              child: Row(
                children: [
                  CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "+${country.phoneCode}",
                      style: CustomTextStyles.bodyLargeMontserrat,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 232.h,
                controller: controller,
                hintText: "Mobile Number",
                textInputType: TextInputType.phone,
                contentPadding: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
