import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension DeviceSize on BuildContext {
  bool isMobileSize() {
    final responsiveValue = ResponsiveValue(
      this,
      defaultValue: false,
      valueWhen: const [
        Condition.equals(name: MOBILE, value: true),
        Condition.smallerThan(name: MOBILE, value: true),
      ],
    );
    return responsiveValue.value == true;
  }

  bool isDesktopSize() {
    final responsiveValue = ResponsiveValue(
      this,
      defaultValue: false,
      valueWhen: const [
        Condition.equals(name: DESKTOP, value: true),
        Condition.largerThan(name: DESKTOP, value: true),
      ],
    );
    return responsiveValue.value == true;
  }
}
