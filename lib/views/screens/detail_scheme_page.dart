import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/language_controller.dart';
import '../../modal/scheme_modal.dart';

class SchemeListWidget extends StatelessWidget {
  const SchemeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            pro.isGujarati ? 'ગવઁ યુનિટી કન્નેક્ટ ' : 'Gov Connect',
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(
                (index + 1).toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              title: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pro.isGujarati ? data[index].title : data[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SchemeDetailsPage(data[index]),
                  ),
                );
              },
            );
          },
        ),
      );
    });
  }
}

class SchemeDetailsPage extends StatelessWidget {
  final SchemeModal scheme;

  const SchemeDetailsPage(this.scheme, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(scheme.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              scheme.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                scheme.link;
              },
              child: const Text(
                'More Details',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
