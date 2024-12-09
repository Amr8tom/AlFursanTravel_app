import 'package:flutter/material.dart';

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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Space between columns
          mainAxisSpacing: 8.0, // Space between rows
        ),
        itemCount: items.length, // Number of items in the grid
        itemBuilder: (context, index) {
          // Get the current destination item
          final destination = items[index];

          // Return the grid item (card with image and name)
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
    );
  }
}
