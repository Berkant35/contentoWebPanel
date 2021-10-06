import 'package:flutter/material.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/context_extension.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Buraya giren adminin bilgileri gelmesi gerekiyor.. <--- <--- <--- <---

    return Expanded(
        flex: 2,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQueryExtension(context).lowValue,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  "Contento Panel",
                  style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),

                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: MediaQueryExtension(context).mediumValue,
                              child: Icon(Icons.person,
                                  size: 32, color: Colors.black26),
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                            child: Flexible(
                              fit: FlexFit.tight,
                              child: Text(
                                "Ahmet Yaşar",
                                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
