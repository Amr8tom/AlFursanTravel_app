import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

class CustomDestinationHorizontalList extends StatelessWidget {
  final List<Map<String, String>> items;

  const CustomDestinationHorizontalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.sizeOf(context).width;
    double hightScreen = MediaQuery.sizeOf(context).height;
    return Container(
      height: hightScreen / 4, // Set the container height based on AppSizes
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        itemCount: items.length, // Specify the number of items
        itemBuilder: (context, index) {
          final destination = items[index];
          return Padding(
            padding: EdgeInsets.all(AppSizes.spaceBetweenIcon),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              margin: EdgeInsets.symmetric(
                  horizontal:
                      AppSizes.iconPadding), // Adds spacing between cards
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8.0)),
                    child: Image.asset(
                      destination['image']!,
                      fit: BoxFit.cover,
                      height: hightScreen / 5, // Set the height of the image
                      width:
                          WidthScreen / 1.7, // Set a fixed width for the image
                    ),
                  ),
                  Expanded(
                    child: Text(
                      destination['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
