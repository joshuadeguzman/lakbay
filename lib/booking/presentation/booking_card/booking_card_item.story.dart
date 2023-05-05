import 'package:lakbay/booking/presentation/booking_card/booking_card_item.dart';
import 'package:widgetbook/widgetbook.dart';

final bookingCardItemStory = WidgetbookComponent(
  name: 'Booking Card Item',
  useCases: [
    WidgetbookUseCase(
      name: 'Knobs',
      builder: (context) => BookingCardItem(
        title: context.knobs.text(
          label: 'Title',
          initialValue: 'El Nido Island View',
        ),
        description: context.knobs.text(
          label: 'Description',
          initialValue: 'Private Island Resort',
        ),
        imageUrl: context.knobs.text(
          label: 'Image URL',
          initialValue:
              'https://user-images.githubusercontent.com/20706361/236167185-8c7d8dd5-f163-4947-9124-5b601aa63caf.png',
        ),
        price: context.knobs
            .number(
              label: 'Price',
              initialValue: 30,
            )
            .toDouble(),
        starRating: context.knobs
            .number(
              label: 'Star Rating',
              initialValue: 5,
            )
            .toInt(),
        onTapBookNow: () {
          // TODO(joshua): Show dialog
        },
      ),
    ),
    WidgetbookUseCase(
      name: 'Book Now',
      builder: (context) => BookingCardItem(
        title: 'El Nido Island View',
        description: 'Private Island Resort',
        imageUrl:
            'https://user-images.githubusercontent.com/20706361/236167185-8c7d8dd5-f163-4947-9124-5b601aa63caf.png',
        price: 60,
        starRating: 5,
        onTapBookNow: () {
          // TODO(joshua): Show dialog
        },
      ),
    ),
    WidgetbookUseCase(
      name: 'Reserve',
      builder: (context) => BookingCardItem(
        title: 'El Nido Tree House',
        description: 'Private Island Resort',
        imageUrl:
            'https://user-images.githubusercontent.com/20706361/236167185-8c7d8dd5-f163-4947-9124-5b601aa63caf.png',
        price: 30,
        buttonTitle: 'Reserve',
        starRating: 3,
        onTapBookNow: () {
          // TODO(joshua): Show dialog
        },
      ),
    ),
  ],
);
