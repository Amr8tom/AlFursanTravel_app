import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/colors.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

class CustomVisaCardWidget extends StatelessWidget {
  final String imagePath;
  final String price;

  const CustomVisaCardWidget({
    super.key,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Stack(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            child: CachedNetworkImage(
              scale: 0.8,
              imageUrl: imagePath,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
              fit: BoxFit.cover,
              width: double.infinity,
              height:
                  AppSizes.productItemHeight * 1.3, // Fixed height for the card
            ),
          ),

          // Price Tag
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.padding / 1.5,
                vertical: AppSizes.padding / 3,
              ),
              decoration: BoxDecoration(
                color: ColorRes.primary,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
              ),
              child: Text(
                price,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
