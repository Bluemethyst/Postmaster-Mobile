import 'package:flutter/material.dart';

IconData getIcon(String icon) {
  if (icon == 'Delivered') {
    return Icons.check_circle_outline;
  } else if (icon == 'In Transit') {
    return Icons.local_shipping_outlined;
  } else if (icon.contains("International departure")) {
    return Icons.flight_takeoff;
  } else if (icon.contains("International arrival")) {
    return Icons.flight_land;
  } else if (icon.contains("Depot") || icon.contains("depot")) {
    return Icons.home_outlined;
  } else {
    return Icons.error_outline;
  }
}
