import 'package:flutter/material.dart';
import '../../services/notification_service.dart';

class Lab10NotificationPage extends StatefulWidget {
  const Lab10NotificationPage({Key? key}) : super(key: key);

  @override
  State<Lab10NotificationPage> createState() => _Lab10NotificationPageState();
}

class _Lab10NotificationPageState extends State<Lab10NotificationPage> {
  String _fcmToken = "Loading...";

  @override
  void initState() {
    super.initState();
    _fetchFCMToken();
  }

  Future<void> _fetchFCMToken() async {
    final token = await NotificationService().getFCMToken();
    setState(() {
      _fcmToken = token ?? "Failed to get token";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications (LAB 10)'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Local Notifications",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.notifications_active),
              label: const Text("Trigger Instant Notification"),
              onPressed: () {
                NotificationService().showInstantNotification(
                  "Immediate Alert!",
                  "This is an instant local notification.",
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.schedule),
              label: const Text("Schedule Notification (5 sec delay)"),
              onPressed: () {
                NotificationService().scheduleNotification(
                  "Scheduled Alert!",
                  "This notification was scheduled 5 seconds ago.",
                  5,
                );
                
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notification scheduled in 5 seconds! Please wait.')),
                );
              },
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 40),
            const Text(
              "Push Notifications (FCM)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Copy the following token and send a test message from your Firebase Console:",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            SelectableText(
              _fcmToken,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
