part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  static const _surfaceMode = FlexSurfaceMode.highScaffoldLowSurface;
  static const _blendLevel = 18;
  static const _defaultAppBarStyleLight = FlexAppBarStyle.primary;
  static const _defaultAppBarStyleDark = FlexAppBarStyle.background;
  static const _appBarOpacity = 0.95;
  static const _appBarElevation = 0.0;
  static const _transparentStatusBar = true;
  static const _tabBarStyle = FlexTabBarStyle.forAppBar;
  static const _tooltipsMatchBackground = true;
  static const _swapColours = false;
  static const _lightIsWhite = false;
  static const _darkIsTrueBlack = false;
  static const _useSubTheme = true;
  static final _visualDensity = FlexColorScheme.comfortablePlatformDensity;
  static final _fontFamily = GoogleFonts.notoSans().fontFamily;
  static const _subThemeData = FlexSubThemesData(
    useTextTheme: true,
    defaultRadius: 8,
    fabUseShape: true,
    interactionEffects: true,
    bottomNavigationBarElevation: 0,
    bottomNavigationBarOpacity: 0.95,
    navigationBarOpacity: 0.95,
    navigationBarMutedUnselectedText: true,
    navigationBarMutedUnselectedIcon: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    inputDecoratorUnfocusedHasBorder: true,
    blendOnColors: true,
    blendTextTheme: true,
    popupMenuOpacity: 0.95,
  );

  const ThemeState._();

  const factory ThemeState({
    @Default(FlexScheme.blue) FlexScheme scheme,
    @Default(ThemeMode.system) ThemeMode mode,
    @Default(true) bool useFlexColourTheme,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);

  ThemeData get light => FlexThemeData.light(
    scheme: scheme,
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: _defaultAppBarStyleLight,
    appBarOpacity: _appBarOpacity,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    lightIsWhite: _lightIsWhite,
    useSubThemes: _useSubTheme,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
  );

  ThemeData get dark => FlexThemeData.dark(
    scheme: scheme,
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: _defaultAppBarStyleDark,
    appBarOpacity: _appBarOpacity,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    darkIsTrueBlack: _darkIsTrueBlack,
    useSubThemes: _useSubTheme,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
  );

  ThemeData get lightWithSurfaceColouredAppBar => FlexThemeData.light(
    scheme: scheme,
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: FlexAppBarStyle.surface,
    appBarOpacity: _appBarOpacity,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    lightIsWhite: _lightIsWhite,
    useSubThemes: _useSubTheme,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
  );

  ThemeData get darkWithSurfaceColouredAppBar => dark;
}