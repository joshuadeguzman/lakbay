import 'package:flutter/material.dart';

import '../../../components/card_item/card_item.dart';

class BookingCardItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final double? reviews;
  final int? starRating;
  final double price;
  final String buttonTitle;
  final VoidCallback? onTapBookNow;

  const BookingCardItem({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.reviews,
    this.starRating,
    required this.price,
    this.buttonTitle = 'Book Now',
    this.onTapBookNow,
  }) : assert(
          starRating != null && starRating <= 5,
          'The `starRating` cannot be more than 5.',
        );

  @override
  Widget build(BuildContext context) {
    return CardItem(
      onTap: () {
        // TODO(joshua): Redirect to Hotel Details Page
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 70,
              width: 80,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.labelMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                if (starRating != null) ...[
                  Text(
                    'Reviews',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      for (int i = 0; i < starRating!; i++)
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12,
                        )
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: onTapBookNow,
                child: Text(buttonTitle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
