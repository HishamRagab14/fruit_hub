import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            6,
            (index) => Padding(
              padding: index != 0
                  ? const EdgeInsets.symmetric(horizontal: 8.0)
                  : const EdgeInsets.all(0),
              child: const FeaturedItem(),
            ),
          ),
        ));
  }
}
