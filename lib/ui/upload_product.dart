import 'package:contento_web_admin_panel/utilities/init/theme/renkler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/context_extension.dart';
import 'package:contento_web_admin_panel/utilities/constant/extension/EdgeExtension.dart';
import 'package:contento_web_admin_panel/utilities/components/button/CustomElevatedButton.dart';


class UploadProduct extends StatefulWidget {
  const UploadProduct({Key? key}) : super(key: key);

  @override
  _UploadProductState createState() => _UploadProductState();
}

class _UploadProductState extends State<UploadProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       shadowColor: Colors.transparent,
       automaticallyImplyLeading: false,
       toolbarHeight: MediaQueryExtension(context).height/15,
       title: Text(
       "Müşteri Teslim",
       style: Theme.of(context).textTheme.headline2
       ),
     ),

      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 4,
            child: Container(
              child: Row(
                
                children: [
                  Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: MediaQueryExtension(context).highValue,),
                                Text('İslem ID:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,        fontSize: 24),),
                                Text(' cvbvbşcvlkb319g9',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: MediaQueryExtension(context).highValue,),
                                Text('Müşteri ID:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold     ,fontSize: 24    ),    ),
                                Text(' dfbsdf24fgh356',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500 ,fontSize: 20),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: MediaQueryExtension(context).highValue,),
                                Text('Sipariş Tarihi:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24  ),),
                                Text(' 12.08.2021',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500    ,fontSize: 20 ),)
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(EdgeExtension.hugeEdge.edgeValue),
                              child: Text('Müşteri Yorumu:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                            ),
                            Container(
                              height: MediaQueryExtension(context).height/2.8,
                              width: MediaQueryExtension(context).width/3.5,
                              margin: EdgeInsets.all(EdgeExtension.hugeEdge.edgeValue),
                              decoration: BoxDecoration(
                                color: Renk.c4,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color: Renk.b4),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:  EdgeInsets.all(EdgeExtension.lowEdge.edgeValue),
                                  child: Text(
                                      'Bu bizim ana yemeğimiz biraz nostaljik bir mekan olduğumuz için bunu tema olarak kullanırsanız seviniriz.',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),
                                  textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: MediaQueryExtension(context).highValue,),
                  Column(
                    children: [
                      Container(
                        height: MediaQueryExtension(context).height/2.5,
                        width: MediaQueryExtension(context).height/2.5,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(15)),

                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset('assets/example.jpg',fit: BoxFit.cover,)),
                      ),
                      SizedBox(height:MediaQueryExtension(context).normalValue),

                      CustomElevatedButton(
                        borderRadius: 15,
                        width: MediaQueryExtension(context).width/10,
                        height: MediaQueryExtension(context).height/22,
                        inButtonWidget: Text("İndir",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white,fontSize: 24)),
                        onPressed: (){

                      },)
                    ],
                  ),
                  Column(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          height: MediaQueryExtension(context).height/2.5,
                          width: MediaQueryExtension(context).height/2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.black)
                          ),
                          child: Icon(Icons.add,size: 42,),
                        ),
                      ),
                      SizedBox(height:MediaQueryExtension(context).normalValue),
                      CustomElevatedButton(
                        borderRadius: 15,
                        width: MediaQueryExtension(context).width/10,
                        height: MediaQueryExtension(context).height/22,
                        inButtonWidget: Text("Yükle",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white,fontSize: 24)),
                        onPressed: (){

                      },)
                    ],
                  ),
                  SizedBox(width: MediaQueryExtension(context).highValue,),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: CustomElevatedButton(
                borderRadius: 15,
                primaryColor: Renk.yesil,
                width: MediaQueryExtension(context).width/8,
                height: MediaQueryExtension(context).height/22,
                inButtonWidget: Text("Bitir ve Gönder",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white,fontSize: 24)),
                onPressed: (){

                },),
            ),
          ),
        ],
      ),
    );
  }
}
