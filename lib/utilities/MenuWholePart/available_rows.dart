import 'package:flutter/material.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/context_extension.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/EdgeExtension.dart';

class AvailableRows extends StatelessWidget {
  final String islemID;
  final String musteriID;
  final String siparisTarihi;
  final String islemDurumu; //1,2,3
  final String ilgilenenTasarimci;

  AvailableRows(
      {required this.islemID,
      required this.musteriID,
      required this.siparisTarihi,
      required this.islemDurumu,
      required this.ilgilenenTasarimci});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQueryExtension(context).lowValue),
        child: Container(
            height: MediaQueryExtension(context).height / 20,
            decoration: BoxDecoration(
                color: getColorFromIslemDurumu(islemDurumu),
                borderRadius: BorderRadius.all(
                    Radius.circular(EdgeExtension.lowEdge.edgeValue))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  islemID,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(musteriID,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text(siparisTarihi,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text(islemDurumu,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text(ilgilenenTasarimci,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            )),
      ),
    );
  }
}

getColorFromIslemDurumu(String islemDurumu) {
  if (islemDurumu == "İşlem Durumu") {
    return Colors.grey.shade400;
  } else if (islemDurumu == "1") {
    return Colors.red.shade500;
  } else if (islemDurumu == "2") {
    return Colors.green.shade500;
  } else {
    return Colors.orange.shade500;
  }
}
