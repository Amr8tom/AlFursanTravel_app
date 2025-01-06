import 'package:flutter/material.dart';

class DeleteMyAccountBody extends StatelessWidget {
  const DeleteMyAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Are you sure you want to delete your account?",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "This action is irreversible. All your data will be lost, and you will not be able to recover it.",
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Cancel Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                ),
                onPressed: () {
                  Navigator.pop(context); // Close the screen on cancel
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(width: 20.0), // Space between buttons

              // Delete Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                ),
                onPressed: () {
                  // Handle account deletion logic here
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Account Deleted"),
                        content: const Text("Your account has been successfully deleted."),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pop(); // Go back to the previous screen
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  "Delete Account",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
