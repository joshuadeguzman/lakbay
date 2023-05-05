import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'categories.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      scaffoldBuilder: (context, frame, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: child,
            ),
          ),
        );
      },
      categories: [
        bookingFeatureCategory,
        cardsCategory,
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
      ],
      appInfo: AppInfo(
        name: 'Lakbay Component Libary',
      ),
    );
  }
}
