import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';

class VersionScreen extends StatelessWidget {
  const VersionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.version,
        showBackArrow: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            CircleAvatar(
              radius: AppSizes.borderRadiusXXLg*2,
              backgroundColor: ColorRes.primaryBackground,
              child: Icon(
                Icons.apps,
                size: AppSizes.iconLg*2,
                color: ColorRes.primary,
              ),
            ),
             SizedBox(height: AppSizes.space/2),
            // App Name
            Text(
              S.current.appName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorRes.primaryBGAppBar,
              ),
            ),
            SizedBox(height: AppSizes.space/2),
            // Version Number
            Text(
              S.current.version + " 2.0.0 ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: AppSizes.space/2),
            // Additional Info
            Text(
              S.current.welcomeMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
