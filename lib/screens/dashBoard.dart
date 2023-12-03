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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
// mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Card with text component
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
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
                // Icon card component
                Align(
                  alignment: Alignment.center,

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: SizedBox(
                        width: 375,
                        height: 90,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              iconCards(),
                              iconCards(),
                              iconCards(),
                              iconCards()

    ] ),
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 375,
                        decoration: const BoxDecoration(
                          color: Colors.white,
borderRadius: BorderRadius.all(Radius.circular(16))
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            iconButton(),
                            iconButton(),
                            iconButton(),
                            iconButton(),
                            iconButton(),
                            iconButton(),
                            iconButton(),
                            iconButton(),

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center,
                        width: 100,
                        height: 12,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12),),
                        ),
                        child: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.blue,size: 15,),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Destinations",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: ScrollConfiguration(
behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(mainAxisSize: MainAxisSize.min,
                        children: [
                          accommodationButton(),
                          accommodationButton(),
                          accommodationButton(),
                          accommodationButton(),
                          accommodationButton(),
                          accommodationButton(),
                          accommodationButton(),


                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Accommodation",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(mainAxisSize: MainAxisSize.min,
                        children: [
                       countryButton(),
                          countryButton(),
                          countryButton(),
                          countryButton(),
                          countryButton(),
                          countryButton(),
                          countryButton(),
                          countryButton(),


                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Loans",bold: true )),
                ),

                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(colors: [
                              Colors.blueAccent.withOpacity(.5),
                              Colors.blueAccent.withOpacity(.6),
                              Colors.blueAccent.withOpacity(.7),
                              Colors.blueAccent.withOpacity(.8),
                              Colors.blueAccent.withOpacity(.9),

                            ])
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ConstantText.heading2(text: "For Undergrad ",bold: true),
                        ),
                        

                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  colors: [

                                Colors.purple.withOpacity(.5),
                                Colors.purple.withOpacity(.6),
                                Colors.purple.withOpacity(.7),
                                Colors.purple.withOpacity(.8),
                                Colors.purple.withOpacity(.9),

                              ])
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ConstantText.heading2(text: "For Postgrad",bold: true),
                        ),


                      ],
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Help Your Self With Calculation",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      calculationButtons(),
                        calculationButtons(text: "Loan Calculator"),
                        calculationButtons(text: "Interest Calculator",icon: Icons.percent),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Courses",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Courses",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Dreams to Fly Scholarship",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Timeline(from Leverage Edu App)",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Testimonials",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Trusted Voice",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 8),
                  child: Align(alignment: Alignment.centerLeft,child: ConstantText.heading1(text: "Refer & Earn",bold: true )),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),
                        calculationButtons(),

                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding calculationButtons({String? text, IconData? icon, }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(icon??Icons.calculate,color: Colors.blue,size: 30,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ConstantText.genericText(text: text??"EMI Calculator", fontSize: 12),
                      ),
                    ],
                  ),
    );
  }

  Padding countryButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 16),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular((22))
        ),
        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("united_kingdom.png",width: 45,),
                        Container(
                          width: 100,
                          height: 45,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(

                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ConstantText.genericText(text: "United Kingdom",bold: true),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2.0),
                                    child: ConstantText.genericText(text: "200+ Uni "),
                                  ),)
                            ],
                          ),
                        )
                      ],
                    ),
      ),
    );
  }
  Padding accommodationButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("united_kingdom.png",width: 45,),
          Container(
            width: 100,
            height: 45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ConstantText.genericText(text: "United Kingdom",bold: true),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: ConstantText.genericText(text: "200+ Uni "),
                  ),)
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding iconButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
children: [
  Icon(Icons.accessibility,color: Colors.blue,),
  ConstantText.genericText(text: "Airport Cabs",fontSize: 12)
],
),
    );
  }

  Padding iconCards() {
    return Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Container(
                      width: 80,
                      height: 90,
                      // constraints: BoxConstraints(maxWidth: 95) ,
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.pin_drop,color: Colors.blue,),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: ConstantText.genericText(text: "Destination",bold: true,fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  );
  }
}
