import 'package:flutter/material.dart';
import 'package:govunity_connect/helper/firestore_helper.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/screens/state/welfare_link.dart';
import 'package:provider/provider.dart';

import '../../../controller/language_controller.dart';
import '../../../controller/tts_controller.dart';
import '../../../modal/scheme_modal.dart';
import 'package:flutter/cupertino.dart';

class Wstate extends StatefulWidget {
  const Wstate({super.key});

  @override
  State<Wstate> createState() => _WstateState();
}

class _WstateState extends State<Wstate> {
  @override
  Widget build(BuildContext context) {
        return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            title: Text(
              pro.isGujarati
                  ? 'કલ્યાણ'
                  : pro.isHindi
                      ? 'कल्याण'
                      : 'Walfair',
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
        body: StreamBuilder<List<SchemeModal>>(
          stream: FireStoreHelper.fireStoreHelper.getSchemesStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            final allSchemes = snapshot.data ?? [];
            final data5Schemes = allSchemes.where((s) => s.category == 'General' && s.type == 'State').toList();
            
            if (data5Schemes.isEmpty) {
              return Center(
                child: Text(
                  pro.isGujarati ? 'કોઈ યોજના ઉપલબ્ધ નથી' : pro.isHindi ? 'कोई योजना उपलब्ध नहीं है' : 'No schemes available',
                  style: GoogleFonts.raleway(fontSize: 18),
                ),
              );
            }

            return ListView.builder(
          itemCount: data5Schemes.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(
                (index + 1).toString(),
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              title: Card(
                color: const Color(0xF6F5FAFF),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    pro.isGujarati
                        ? data5Schemes[index].titleG
                        : pro.isHindi
                            ? data5Schemes[index].titleH
                            : data5Schemes[index].title,
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    data5Schemes[index].isFavorited =
                        !data5Schemes[index].isFavorited;
                  });
                },
                icon: Icon(
                  data5Schemes[index].isFavorited
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AgricultureDetailPage(data5Schemes[index]),
                  ),
                );
              },
            );
          },
        );
          },
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton.extended(
            backgroundColor: const Color(
              0xF6F5FAFF,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const WalfairLink();
                  },
                ),
              );
            },
            label: Text(
              pro.isGujarati ? 'લિંક કરો' : 'Link',
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 19),
            ),
            icon: const Icon(CupertinoIcons.link),
          ),
        ),
      );
    });
  }
}

class AgricultureDetailPage extends StatefulWidget {
  final SchemeModal scheme;

  const AgricultureDetailPage(this.scheme, {super.key});

  @override
  State<AgricultureDetailPage> createState() => _AgricultureDetailPageState();
}

class _AgricultureDetailPageState extends State<AgricultureDetailPage> {
  TTsController tTsController = Get.put(
    TTsController(),
  );
  TTsGController tTsgController = Get.put(
    TTsGController(),
  );
  TTsHController tTshController = Get.put(
    TTsHController(),
  );

  @override
  void dispose() {
    tTsController.stop();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          title: Flexible(
            child: Text(
              pro.isGujarati
                  ? widget.scheme.titleG
                  : pro.isHindi
                      ? widget.scheme.titleH
                      : widget.scheme.title,
              style: GoogleFonts.raleway(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pro.isGujarati
                      ? "વર્ણન : "
                      : pro.isHindi
                          ? "विवरण:"
                          : "Description:",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      pro.isGujarati
                          ? widget.scheme.descriptionG
                          : pro.isHindi
                              ? widget.scheme.descriptionH
                              : widget.scheme.description,
                      style: GoogleFonts.raleway(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    pro.isGujarati
                        ? const Text('વર્ણન સાંભળવા માટે:')
                        : pro.isHindi
                            ? const Text('विवरण सुनने के लिए:')
                            : const Text(
                                'To Listen Description:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                    const SizedBox(
                      width: 20,
                    ),
                    Card(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              alignment: Alignment.bottomRight,
                              onPressed: () {
                                pro.isGujarati
                                    ? tTsgController.speak(
                                        text: widget.scheme.descriptionG)
                                    : pro.isHindi
                                        ? tTshController.speak(
                                            text: widget.scheme.descriptionH)
                                        : tTsController.speak(
                                            text: widget.scheme.description);
                              },
                              icon: const Icon(
                                CupertinoIcons.play_arrow_solid,
                                size: 25,
                              )),
                          IconButton(
                            alignment: Alignment.bottomRight,
                            onPressed: () {
                              tTsController.stop();
                            },
                            tooltip: 'pause',
                            icon: const Icon(
                              CupertinoIcons.pause_fill,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  pro.isGujarati
                      ? "પુરાવો  : "
                      : pro.isHindi
                          ? "दस्तावेज : "
                          : "Document:",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pro.isGujarati
                        ? widget.scheme.documentG
                        : pro.isHindi
                            ? widget.scheme.documentH
                            : widget.scheme.document,
                    style: GoogleFonts.raleway(fontSize: 17),
                  ),
                )),
                Row(
                  children: [
                    pro.isGujarati
                        ? const Text('પુરાવો સાંભળવા માટે:')
                        : pro.isHindi
                            ? const Text('दस्तावेज सुनने के लिए:')
                            : const Text(
                                'To Listen Documentation:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                    const SizedBox(
                      width: 20,
                    ),
                    Card(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              alignment: Alignment.bottomRight,
                              onPressed: () {
                                pro.isGujarati
                                    ? tTsgController.speak(
                                        text: widget.scheme.documentG)
                                    : pro.isHindi
                                        ? tTshController.speak(
                                            text: widget.scheme.documentH)
                                        : tTsController.speak(
                                            text: widget.scheme.document);
                              },
                              icon: const Icon(
                                CupertinoIcons.play_arrow_solid,
                                size: 25,
                              )),
                          IconButton(
                              alignment: Alignment.bottomRight,
                              onPressed: () {
                                tTsController.stop();
                              },
                              tooltip: 'pause',
                              icon: const Icon(
                                CupertinoIcons.pause_fill,
                                size: 25,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
