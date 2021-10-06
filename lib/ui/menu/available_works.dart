import 'package:contento_web_admin_panel/utilities/MenuWholePart/available_rows.dart';
import 'package:flutter/material.dart';

import 'package:contento_web_admin_panel/utilities/constant/extension/context_extension.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/EdgeExtension.dart';
class AvailableWorks extends StatefulWidget {
  const AvailableWorks({Key? key}) : super(key: key);

  @override
  State<AvailableWorks> createState() => _AvailableWorksState();
}

class _AvailableWorksState extends State<AvailableWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Spacer(),
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(width: MediaQueryExtension(context).normalValue,),
                      FlutterLogo(size: 42,),
                      SizedBox(width: MediaQueryExtension(context).normalValue,),
                      Text(
                        "Alınabilecek İşlemler",
                        style: Theme.of(context).textTheme.headline2,
                      )
                    ],
                  ),
                )),
            Spacer(),
            Expanded(
                flex: 1,
                child: AvailableRows(
                  islemDurumu: 'İşlem Durumu',
                  islemID: 'İşlem ID',
                  ilgilenenTasarimci: 'İlgilenen Tasarımcı',
                  siparisTarihi: 'Sipariş Tarihi',
                  musteriID: 'Müşteri ID')),
            Spacer(),
            Expanded(
                flex: 12,
                child: Container(
                  child: ListView(
                    children: [
                      AvailableRows(
                        islemDurumu: '1',
                        islemID: 'İşlem ID',
                        ilgilenenTasarimci: 'İlgilenen Tasarımcı',
                        siparisTarihi: 'Sipariş Tarihi',
                        musteriID: 'Müşteri ID'),
                      SizedBox(height: MediaQueryExtension(context).lowValue,),
                      AvailableRows(
                        islemDurumu: '2',
                        islemID: 'İşlem ID',
                        ilgilenenTasarimci: 'İlgilenen Tasarımcı',
                        siparisTarihi: 'Sipariş Tarihi',
                        musteriID: 'Müşteri ID'),
                      SizedBox(height: MediaQueryExtension(context).lowValue,),
                      AvailableRows(
                        islemDurumu: '3',
                        islemID: 'İşlem ID',
                        ilgilenenTasarimci: 'İlgilenen Tasarımcı',
                        siparisTarihi: 'Sipariş Tarihi',
                        musteriID: 'Müşteri ID'),
                      SizedBox(height: MediaQueryExtension(context).lowValue,),
                      AvailableRows(
                        islemDurumu: '1',
                        islemID: 'İşlem ID',
                        ilgilenenTasarimci: 'İlgilenen Tasarımcı',
                        siparisTarihi: 'Sipariş Tarihi',
                        musteriID: 'Müşteri ID')
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
