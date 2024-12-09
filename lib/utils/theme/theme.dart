import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fursan_travel_app/utils/theme/custom_themes/card_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_selection_theme.dart';
import 'custom_themes/text_theme.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    String fontFamily = 'Cairo';

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      // iconTheme: ,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: DTextTheme.lightTextTheme,
      // chipTheme: DChipTheme.lightChipTheme,
      textSelectionTheme: DTextSelectionTheme.lightTextSelection,
      scaffoldBackgroundColor: Colors.white,
      cardTheme: DCardTheme.lightCardTheme,
      appBarTheme: DAppBarTheme.lightAppBarTheme,
      checkboxTheme: DCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    String fontFamily =
        // BlocProvider.of<LanguageCubit>(context).getSavedLanguage == true
        //     ?
        // 'Poppins';
        // :
        'Cairo';

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      cardTheme: DCardTheme.darkCardTheme,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: DTextTheme.darkTextTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: DAppBarTheme.darkAppBarTheme,
      textSelectionTheme: DTextSelectionTheme.darkTextSelection,
      checkboxTheme: DCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
    );
  }
}
