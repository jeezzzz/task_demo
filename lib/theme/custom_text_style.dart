import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/utils/size_utils.dart';
import 'package:ajeesh_s_application3/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMontserrat =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeMontserratGray600 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyMediumff061d28 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF061D28),
      );
  static get bodyMediumff6a6c7b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6A6C7B),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
