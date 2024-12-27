import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/notifications/presentation/controller/notifications/notifications_cubit.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../dummy/dummy_lists.dart';
import '../../../utils/constants/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<NotificationsCubit>(),
      child: Builder(builder: (context) {
        context.read<NotificationsCubit>().getNotificationData();

        return Padding(
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
        );
      }),
    );
  }
}
