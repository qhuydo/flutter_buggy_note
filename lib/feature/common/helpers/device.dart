import 'package:flutter/material.dart';

import '../../../const/breakpoints.dart';

extension DeviceSize on BuildContext {
  bool isMobileSize() {
    // final responsiveValue = ResponsiveValue(
    //   this,
    //   defaultValue: false,
    //   valueWhen: const [
    //     Condition.equals(name: MOBILE, value: true),
    //     Condition.smallerThan(name: MOBILE, value: true),
    //   ],
    // );
    // return responsiveValue.value == true;
    return MediaQuery.of(this).size.width <= 800;
  }

  bool isDesktopSize() {
    // final responsiveValue = ResponsiveValue(
    //   this,
    //   defaultValue: false,
    //   valueWhen: const [
    //     Condition.equals(name: DESKTOP, value: true),
    //     Condition.largerThan(name: DESKTOP, value: true),
    //   ],
    // );
    // return responsiveValue.value == true;
    return MediaQuery.of(this).size.width >= desktopBreakpoint;
  }
}
