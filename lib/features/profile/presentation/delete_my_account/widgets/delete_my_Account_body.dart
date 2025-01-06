import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../../generated/l10n.dart';

class DeleteMyAccountBody extends StatelessWidget {
  const DeleteMyAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.current.askDelete,
            maxLines: 5,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),

          // Description Text
          Text(
            S.current.deleteBody,
            maxLines: 5,
            style: TextStyle(fontSize: 16.0, color: Colors.grey, height: 1.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40.0),

          // Action Buttons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Cancel Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 14.0),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.pop(context); // Close the screen on cancel
                },
                child: Text(
                  S.current.cancleOrder,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
              const SizedBox(width: 20.0), // Space between buttons

              // Delete Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 14.0),
                  elevation: 5,
                ),
                onPressed: () {
                   _deleteAccountAlert(context);                },
                child: Text(
                  S.current.deleteAccount,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future _deleteAccountAlert(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(S.current.accountDeleted),
          content:  Text(S.current.done,maxLines: 3,),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(
                    context, DRoutesName.navigationMenuRoute);
              },
              child:  Text(S.current.backToHome, style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
