import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,
      addons: [
        AccessibilityAddon(),
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme<ThemeData>(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme<ThemeData>(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
        DeviceFrameAddon(
          devices: <DeviceInfo>[...Devices.android.all, ...Devices.ios.all],
        ),
        GridAddon(10),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        InspectorAddon(enabled: true),
        TextScaleAddon(
          scales: [1.0, 1.25, 1.5, 1.75, 2.0],
          initialScale: 1,
        ),
        TimeDilationAddon(),
        ZoomAddon(initialZoom: 1.0),
      ],
      integrations: [
        // To make addons & knobs work with Widgetbook Cloud
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
