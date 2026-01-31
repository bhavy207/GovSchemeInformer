import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/modal/schemeModal.dart';
import 'package:provider/provider.dart';

import '../../controller/language_controller.dart';
import '../../controller/ttsController.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    List<schemeModal> favoriteSchemes =
        masterList.where((scheme) => scheme.isFavorited).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Favorites',
          style: GoogleFonts.raleway(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteSchemes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the detail page of the scheme
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SchemeDetailPage(
                    scheme: favoriteSchemes[index],
                    key: UniqueKey(),
                  ),
                ),
              );
            },
            child: ListTile(
              leading: Text(
                (index + 1).toString(),
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              title: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    favoriteSchemes[index].title,
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    // Update the isFavorited property to false
                    favoriteSchemes[index].isFavorited = false;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class SchemeDetailPage extends StatefulWidget {
  final schemeModal scheme;

  const SchemeDetailPage({required Key key, required this.scheme}) : super(key: key);

  @override
  State<SchemeDetailPage> createState() => _SchemeDetailPageState();
}

class _SchemeDetailPageState extends State<SchemeDetailPage> {
  TTsController tTsController = Get.put(TTsController());

  TTsGController tTsgController = Get.put(
    TTsGController(),
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
          title: Text(
            pro.isGujarati ? widget.scheme.titleG : widget.scheme.title,
            style: GoogleFonts.raleway(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pro.isGujarati ? "વર્ણન : " : "Description:",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      pro.isGujarati
                          ? widget.scheme.descriptionG
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
                        : Text(
                            'To Listen Description:',
                            style: GoogleFonts.raleway(
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
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  pro.isGujarati ? "પુરાવો  : " : "Document:",
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
                        : widget.scheme.document,
                    style: GoogleFonts.raleway(fontSize: 17),
                  ),
                )),
                Row(
                  children: [
                    pro.isGujarati
                        ? const Text('પુરાવો સાંભળવા માટે:')
                        : Text(
                            'To Listen Documentation:',
                            style: GoogleFonts.raleway(
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
                            constraints: const BoxConstraints(),
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
              ],
            ),
          ),
        ),
      );
    });
  }
}