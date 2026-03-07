import 'package:flutter/material.dart';
import 'package:govunity_connect/helper/firestore_helper.dart';
import 'package:govunity_connect/modal/scheme_modal.dart';

class MigrateSchemesPage extends StatefulWidget {
  const MigrateSchemesPage({super.key});

  @override
  State<MigrateSchemesPage> createState() => _MigrateSchemesPageState();
}

class _MigrateSchemesPageState extends State<MigrateSchemesPage> {
  bool _isMigrating = false;
  String _status = "Tap the button to migrate hardcoded schemes to Firestore.";

  Future<void> _migrate() async {
    setState(() {
      _isMigrating = true;
      _status = "Migrating...";
    });

    try {
      final firestoreHelper = FireStoreHelper.fireStoreHelper;

      // Migrate Agriculture (data)
      for (var s in data) {
        s.category = 'Agriculture';
        s.type = 'National';
        await firestoreHelper.addScheme(scheme: s);
      }

      // Migrate Education (edata)
      for (var s in edata) {
        s.category = 'Education';
        s.type = 'National';
        await firestoreHelper.addScheme(scheme: s);
      }

      // Migrate Rural (rdata)
      for (var s in rdata) {
        s.category = 'Rural';
        s.type = 'National';
        await firestoreHelper.addScheme(scheme: s);
      }

      // Migrate Health (hdata)
      for (var s in hdata) {
        s.category = 'Health';
        s.type = 'National';
        await firestoreHelper.addScheme(scheme: s);
      }

      // Migrate Infra (idata)
      for (var s in idata) {
        s.category = 'Infrastructure';
        s.type = 'National';
        await firestoreHelper.addScheme(scheme: s);
      }

      // There are more lists in scheme_modal (e.g. state data lists like cdata, wdata)
      // I am just migrating the National ones for demonstration in this script.

      if (mounted) {
        setState(() {
          _status = "Migration completed successfully!";
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _status = "Error during migration: $e";
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isMigrating = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Migrate Schemes')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_status, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              if (_isMigrating) const CircularProgressIndicator(),
              if (!_isMigrating)
                ElevatedButton(
                  onPressed: _migrate,
                  child: const Text('Start Migration'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
