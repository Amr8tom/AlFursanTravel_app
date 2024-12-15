import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../dummy/dummy_lists.dart';
import '../../../utils/constants/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: AppSizes.space),
        child: ListView.builder(
          itemCount: DummyLists.notifications.length,
          itemBuilder: (context, index) {
            final notification = DummyLists.notifications[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              child: ListTile(
                leading: Icon(Icons.notifications, color: ColorRes.primary),
                title: Text(notification['title']!),
                subtitle: Text(notification['subtitle']!),
                onTap: () {
                  // Handle notification tap (if needed)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Tapped on: ${notification['title']}")),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
