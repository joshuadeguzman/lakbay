import 'package:lakbay/components/card_item/card_item.story.dart';
import 'package:widgetbook/widgetbook.dart';

import '../booking/presentation/booking_card/booking_card_item.story.dart';

final bookingFeatureCategory = WidgetbookCategory(
  name: 'Booking',
  widgets: [
    bookingCardItemStory,
  ],
);

final cardsCategory = WidgetbookCategory(
  name: 'Cards',
  widgets: [
    cardItemStory,
  ],
);
