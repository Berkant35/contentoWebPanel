import 'package:contento_web_admin_panel/ui/menu/available_works.dart';
import 'package:contento_web_admin_panel/ui/menu/done_works.dart';
import 'package:contento_web_admin_panel/ui/menu/waiting_works.dart';
import 'package:contento_web_admin_panel/utilities/MenuWholePart/menu_head.dart';
import 'package:flutter/material.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/context_extension.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/EdgeExtension.dart';

enum WhichPage { DONEWORKS, WAITINGWORKS, AVAILABLEWORKS }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WhichPage whichPage = WhichPage.AVAILABLEWORKS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.indigo,
                child: Column(
                  children: [MenuHeader(), _menuBody(context)],
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                child: getPage(whichPage),
              ))
        ],
      ),
    );
  }

  Expanded _menuBody(BuildContext context) {
    return Expanded(
        flex: 8,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: EdgeExtension.normalEdge.edgeValue),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQueryExtension(context).mediumValue,
                        ),
                        Text(
                          "Tüm İşlemler",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: MediaQueryExtension(context).mediumValue,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              whichPage = WhichPage.AVAILABLEWORKS;
                            });
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              "Alınabilecek İşlemler",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQueryExtension(context).normalValue,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              whichPage = WhichPage.WAITINGWORKS;
                            });
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              "Bekleyen İşlemlerim",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQueryExtension(context).normalValue,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              whichPage = WhichPage.DONEWORKS;
                            });
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              "Yapılmış İşlemlerim",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: EdgeExtension.normalEdge.edgeValue,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Çıkış Yap",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget getPage(WhichPage value) {
    if (value == WhichPage.AVAILABLEWORKS) {
      return AvailableWorks();
    } else if (value == WhichPage.DONEWORKS) {
      return DoneWorks();
    } else if (value == WhichPage.WAITINGWORKS) {
      return WaitingWorks();
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
