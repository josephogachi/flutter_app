import 'package:flutter/material.dart';
import 'package:lost_found/core/utils/size_utils.dart';
import 'package:lost_found/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeSoraOnPrimary => theme.textTheme.bodyLarge!.sora.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get bodyLargeSoraOnPrimary_1 =>
      theme.textTheme.bodyLarge!.sora.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumManropeErrorContainer =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumManropeGray900 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeSoraDeeppurple900 =>
      theme.textTheme.headlineLarge!.sora.copyWith(
        color: appTheme.deepPurple900,
        fontWeight: FontWeight.w800,
      );
  // Label text style
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900SemiBold_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  // Sora text style
  static get soraBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).sora;
  static get soraPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w800,
      ).sora;
  static get soraPrimaryRegular => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).sora;
  static get soraPrimarySemiBold => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).sora;
  // Title text style
  static get titleLargeDeeppurple900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurple900,
      );
  static get titleLargeSoraPrimary => theme.textTheme.titleLarge!.sora.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSoraDeeppurple900 =>
      theme.textTheme.titleMedium!.sora.copyWith(
        color: appTheme.deepPurple900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSoraPrimary =>
      theme.textTheme.titleMedium!.sora.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallSora => theme.textTheme.titleSmall!.sora.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSoraBlack900 =>
      theme.textTheme.titleSmall!.sora.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSoraBlack900SemiBold =>
      theme.textTheme.titleSmall!.sora.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sora {
    return copyWith(
      fontFamily: 'Sora',
    );
  }
}
