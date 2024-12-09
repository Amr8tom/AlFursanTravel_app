import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';

class CertainCategoryScreen extends StatelessWidget {
  final Map<String, dynamic> arg;
  const CertainCategoryScreen({super.key, required this.arg});

  @override
  Widget build(BuildContext context) {
    final List items = arg["items"];
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: arg["title"],
      ),
      body: Column(
        children: [
          SizedBox(
            height: AppSizes.space,
          ),
          Text(arg["title"]),
          SizedBox(
            height: AppSizes.space,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                // Get the current destination item
                final destination = items[index];

                return Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8.0)),
                        child: Image.asset(
                          destination['image']!,
                          fit: BoxFit.cover,
                          height: 120.0, // Adjust the height of the image
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
