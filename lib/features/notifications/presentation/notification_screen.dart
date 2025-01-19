import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/notifications/presentation/controller/notifications/notifications_cubit.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<NotificationsCubit>(),
      child: Builder(builder: (context) {
        context.read<NotificationsCubit>().getNotificationData();
        return BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            print(
                "state is ================================================> $state");
            if (state is NotificationsSuccess) {
              final notifications = state.notificationModel.Notifications;
              return Padding(
                padding: EdgeInsets.only(top: AppSizes.space),
                child: ListView.builder(
                  itemCount: notifications?.length,
                  itemBuilder: (context, index) {
                    final notification = notifications?[index];
                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      child: ListTile(
                        leading: Icon(
                          Icons.notifications,
                          color: ColorRes.primary,
                          size: AppSizes.iconLg,
                        ),
                        title: Text(
                          notification!.titleAr.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: AppSizes.padding / 2),
                          child: notification?.messageAr == null
                              ? SizedBox()
                              : Text(
                                  notification!.messageAr.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colors.black),
                                ),
                        ),
                        onTap: () {
                          // Handle notification tap (if needed)
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    "${S.current.callUs}: ${notification!.titleAr.toString()}")),
                          );
                        },
                      ),
                    );
                  },
                ),
              );
            } else {
              return CustomUI.simpleLoader();
            }
          },
        );
      }),
    );
  }
}
