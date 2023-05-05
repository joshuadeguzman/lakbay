import 'package:flutter/material.dart';
import 'package:lakbay/booking/presentation/booking_card/booking_card_item.dart';
import 'package:lakbay/components/card_item/card_item.dart';
import 'package:widgetbook/widgetbook.dart';

final cardItemStory = WidgetbookComponent(
  name: 'Card Item',
  useCases: [
    WidgetbookUseCase(
      name: 'Custom Child',
      builder: (context) => const CardItem(
        child: Center(
          child: Text('Content'),
        ),
      ),
    ),
  ],
);
