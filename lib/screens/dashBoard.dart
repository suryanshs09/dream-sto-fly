import 'package:dream_sto_fly/common_widgets/constantText.dart';
import 'package:dream_sto_fly/utils/constant_colors.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ConstantColors.backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 50,
        elevation: 0,
leadingWidth: 100,
        backgroundColor: ConstantColors.backgroundColor,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            IconButton(padding:EdgeInsets.all(0),onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
      Text("Logo",style: TextStyle(fontWeight: FontWeight.bold,color: ConstantColors.textColor)),


          ],
        ),
        // title: Align(
        //   alignment: Alignment.centerLeft,
        //     child:
        //     Text("Logo",style: TextStyle(fontWeight: FontWeight.bold,color: ConstantColors.textColor)
        //       ,)),
      actions: [Row(

        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(Icons.wallet,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(backgroundColor: Colors.grey,radius:12),
          )
        ],
        
      )],

      ),
      body: Column(

        children: [
          //Card with text component
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))
                    
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0,top: 4),
                    child: ConstantText.constantText(text: "Good Evening",bold: true),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: ConstantText.constantText(text: "Special App Exclusive Welcome Offers waiting for you. Grab Now!")),
                      IconButton(padding: EdgeInsets.all(0),onPressed: (){}, icon: Icon(Icons.arrow_circle_right,color: Colors.blue,size: 20,)),
                    ],
                  )              ],
              ),
            ),
          ),
          //Icon card component
          // Container(
          //   width: 400,
          //   height: 140,
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: ScrollConfiguration(
          //       behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          //
          //       child: ListView.builder(
          //         physics: NeverScrollableScrollPhysics(),
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 4,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 4.0),
          //             child: Container(
          //               constraints: BoxConstraints(maxWidth: 90) ,
          //               padding: EdgeInsets.all(12),
          //               decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.all(Radius.circular(12))
          //               ),
          //               child: Column(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Icon(Icons.pin_drop,color: Colors.black87,size: 50,),
          //                   Expanded(
          //                     child: Padding(
          //                       padding: const EdgeInsets.symmetric(vertical: 4.0),
          //                       child: ConstantText.genericText(text: "Destinations",bold: true,fontSize: 15),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //
          //
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
