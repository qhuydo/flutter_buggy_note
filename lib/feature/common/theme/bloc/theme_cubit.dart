import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_cubit.freezed.dart';

part 'theme_cubit.g.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void changeThemeMode({required ThemeMode themeMode}) => emit(
        state.copyWith(mode: themeMode),
      );

  void changeScheme({required FlexScheme scheme}) => emit(
        state.copyWith(scheme: scheme),
      );

  void changeThemePreference({required bool useFlexColourTheme}) => emit(
        state.copyWith(useFlexColourTheme: useFlexColourTheme),
      );

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeState state) => state.toJson();
}
