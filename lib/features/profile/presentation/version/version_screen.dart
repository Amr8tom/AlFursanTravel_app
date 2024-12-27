import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';

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
              radius: 50,
              backgroundColor: ColorRes.primaryBackground,
              child: Icon(
                Icons.apps,
                size: 50,
                color: ColorRes.primary,
              ),
            ),
            const SizedBox(height: 20),
            // App Name
            Text(
              S.current.appName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorRes.primaryBGAppBar,
              ),
            ),
            const SizedBox(height: 10),
            // Version Number
            Text(
              S.current.version + " 1.0.0 ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 30),
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
