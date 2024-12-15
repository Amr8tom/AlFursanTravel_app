import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

class CustomDigitalProductsCard extends StatelessWidget {
  final String imagPath;
  final String destinationName;
  final String city;
  final String rate;
  final String price;
  const CustomDigitalProductsCard(
      {super.key,
      required this.imagPath,
      required this.destinationName,
      required this.city,
      required this.rate,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppSizes.productImageRadius)),
            child: Image.asset(
              imagPath!,
              fit: BoxFit.cover,
              height:
                  AppSizes.productItemHeight, // Adjust the height of the image
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSizes.iconPadding),
            child: Text(
              destinationName!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.fontSizeSm,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
