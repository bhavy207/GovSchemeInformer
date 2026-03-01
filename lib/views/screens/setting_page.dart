import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/language_controller.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  final User? currentUser = FirebaseAuth.instance.currentUser;
  bool _notificationsEnabled = true;

  @override
  void initState() {
    super.initState();
    _loadNotificationPreference();
  }

  Future<void> _loadNotificationPreference() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = prefs.getBool('notifications_enabled') ?? true;
    });
  }

  Future<void> _toggleNotifications(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications_enabled', value);
    setState(() {
      _notificationsEnabled = value;
    });
  }

  void _showUsernameDialog(BuildContext context, LanguageController pro) {
    TextEditingController nameController = TextEditingController(text: currentUser?.displayName ?? '');
    
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          pro.isGujarati ? 'વપરાશકર્તા નામ બદલો' : pro.isHindi ? 'उपयोगकर्ता नाम बदलें' : 'Change Username',
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        ),
        content: TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: pro.isGujarati ? 'નવું નામ' : pro.isHindi ? 'नया नाम' : 'New name',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(pro.isGujarati ? 'રદ કરો' : pro.isHindi ? 'रद्द करें' : 'Cancel', style: GoogleFonts.raleway(color: Colors.black)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () async {
              try {
                if (currentUser != null && nameController.text.trim().isNotEmpty) {
                  await currentUser!.updateDisplayName(nameController.text.trim());
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(pro.isGujarati ? 'વપરાશકર્તા નામ સફળતાપૂર્વક અપડેટ થયું' : pro.isHindi ? 'उपयोगकर्ता नाम सफलतापूर्वक अपडेट किया गया' : 'Username updated successfully')),
                    );
                  }
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: $e')),
                  );
                }
              }
              if (context.mounted) Navigator.of(ctx).pop();
            },
            child: Text(pro.isGujarati ? 'સાચવો' : pro.isHindi ? 'सहेजें' : 'Save', style: GoogleFonts.raleway(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _handlePasswordReset(BuildContext context, LanguageController pro) async {
    if (currentUser == null || currentUser!.isAnonymous || currentUser!.email == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(pro.isGujarati ? 'અતિથિ એકાઉન્ટ માટે ઉપલબ્ધ નથી' : pro.isHindi ? 'अतिथि खाते के लिए उपलब्ध नहीं है' : 'Not available for Guest accounts')),
      );
      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: currentUser!.email!);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(pro.isGujarati ? 'પાસવર્ડ રીસેટ લિંક ઈમેલ પર મોકલી છે' : pro.isHindi ? 'पासवर्ड रीसेट लिंक ईमेल पर भेज दिया गया है' : 'Password reset link sent to email')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              pro.isGujarati
                  ? 'સેટિંગ્સ'
                  : pro.isHindi
                      ? 'सेटिंग्स'
                      : 'Settings',
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListTile(
                leading: const Icon(Icons.person, color: Colors.blue),
                title: Text(
                  pro.isGujarati ? 'વપરાશકર્તા નામ' : pro.isHindi ? 'उपयोगकर्ता नाम' : 'Username',
                  style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                onTap: () => _showUsernameDialog(context, pro),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.lock, color: Colors.blue),
                title: Text(
                  pro.isGujarati ? 'પાસવર્ડ બદલો' : pro.isHindi ? 'पासवर्ड बदलें' : 'Change Password',
                  style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                onTap: () => _handlePasswordReset(context, pro),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.notifications, color: Colors.blue),
                title: Text(
                  pro.isGujarati ? 'સૂચનાઓ' : pro.isHindi ? 'सूचनाएं' : 'Notifications',
                  style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                trailing: Switch(
                  value: _notificationsEnabled,
                  onChanged: _toggleNotifications,
                  activeColor: Colors.blue,
                ),
                onTap: () => _toggleNotifications(!_notificationsEnabled), // Also allow tapping the row
              ),
            ],
          ),
      );
    });
  }
}
