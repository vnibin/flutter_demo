import 'package:flutter/material.dart';
import 'package:flutter_siti/model/coupon_model.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CouponModel>coupons=[];


  void _getCoupons()
  {
    coupons=CouponModel.getCoupons();
  }


  @override
  Widget build(BuildContext context) {

    _getCoupons();
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];



    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
    body:
    Column(

      children: <Widget>[
        SizedBox(height: 30),

        Expanded(

          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 20),
              scrollDirection: Axis.vertical,
              separatorBuilder: (context,index)=>SizedBox(height: 25,),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {



                return Container(

                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00aaf8),
                    borderRadius: BorderRadius.circular(20.0),

                    // Adjust the radius to your preference
                  ),






                  child: Stack(
                    children: [

                      // Align the button to the bottom right
                      Row(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        // Adjust the alignment as needed
                        children: [


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,


                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                            children:[
                              Container(
                                padding: EdgeInsets.only(left:20),
                                width: 200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                                child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                                  Text(coupons[index].couponNo,
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 11),

                                  ),



                              ),
                              Padding(padding: EdgeInsets.only(left: 20),
                                child: Text(coupons[index].customerName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),

                              ),

                              Container(
                                padding: EdgeInsets.only(left:20),
                                width: 200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                                child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                                Text(coupons[index].allocatedRmn,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11
                                  ),
                                ),



                              )


                              ,
                              Container(
                                padding: EdgeInsets.only(left:20),
                                width: 200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                                child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                                Text(coupons[index].allocatedDate,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),

                                ),



                              ),
                              Padding(padding: EdgeInsets.only(left: 20),
                                child: Text(coupons[index].expiredOn,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),


                              ),

                              Padding(padding: EdgeInsets.only(left: 20),
                                child: Text(coupons[index].ottCustomerId,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),
                              ),

                              Padding(padding: EdgeInsets.only(left: 20),
                                child: Text(coupons[index].transactionId,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),
                              ),


                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Padding(padding: EdgeInsets.only(right: 10,top: 20),
                                child: Text(coupons[index].packageName,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),

                              ),

                              Padding(padding: EdgeInsets.only(right: 10,top: 40),
                                child: Text(coupons[index].consumedRmn,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),

                              ),

                              Padding(padding: EdgeInsets.only(right: 10,top: 20),
                                child: Text(coupons[index].consumedDate,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),

                              ),

                              Padding(padding: EdgeInsets.only(right: 10,top: 20),
                                child: Text(coupons[index].watchoCustomerId,
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 11),),

                              ),

                            ],
                          ),


                        ],
                      ),



                      Container(
                        margin: EdgeInsets.only(top: 10),


                        child: Align(
                          alignment: Alignment.bottomRight,

                          child: Container(
                            margin: EdgeInsets.only(top: 20,right: 10),
                            child: ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, // Set the background color here
                              ),

                              onPressed: () {
                                // Button action here
                              },
                              child: Text('View Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),),
                            ),
                          ),

                        ),
                      )
                    ],


                  ),





                );



              }),
        )
      ],
    )



      /*body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          //_customItem()
         // _couponsSection()





       *//* ListView.separated(

            padding: EdgeInsets.only(left: 20,right: 20),
            scrollDirection: Axis.vertical,
            separatorBuilder: (context,index)=>
                SizedBox(width: 25,),
            itemCount: coupons.length,
            itemBuilder: (context,index){
              _couponsSection();


            }
        )*//*

        ],
      ),
*/


    );
  }

  AppBar appBar()
  {
    return AppBar(
      title: const Text('Siti',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),

      ),
      backgroundColor:const Color(0xFF00aaf8),
      centerTitle:true,
      leading: GestureDetector(
        onTap: (){
          
        },
        child: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            //color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10.0)
        ),
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20),
        ),
      ),


    );
  }


  // child:ListView.separated(
  // separatorBuilder: (context,index)=>SizedBox(width: 25,),
  // itemCount: coupons.length,
  // itemBuilder: (context,index){
  // return
  // }
  //
  // )

  Container _couponsSection()
  {


    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          color: const Color(0xFF00aaf8),
          borderRadius: BorderRadius.circular(20.0),

          // Adjust the radius to your preference
        ),





child: Stack(
  children: [

  // Align the button to the bottom right
     Row(
      crossAxisAlignment:CrossAxisAlignment.start ,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      // Adjust the alignment as needed
      children: [


        Column(


          mainAxisAlignment: MainAxisAlignment.spaceEvenly,


          children:[

            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 1',
                style: TextStyle(color: Colors.white),),

            ),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 2',
                style: TextStyle(color: Colors.white),),

            ),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 3',
                style: TextStyle(color: Colors.white),
              ),


            ),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 4',
                style: TextStyle(color: Colors.white),),


            ),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 5',
                style: TextStyle(color: Colors.white),),


            ),

            Padding(padding: EdgeInsets.only(left: 20),
              child: Text('Column 5',
              style: TextStyle(color: Colors.white),),
            ),


          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Padding(padding: EdgeInsets.only(right: 10,top: 20),
              child: Text('Column 1',
                style: TextStyle(color: Colors.white),),

            ),

            Padding(padding: EdgeInsets.only(right: 10,top: 40),
              child: Text('Column 1',
                style: TextStyle(color: Colors.white),),

            ),

            Padding(padding: EdgeInsets.only(right: 10,top: 20),
              child: Text('Column 1',
                style: TextStyle(color: Colors.white),),

            ),

            Padding(padding: EdgeInsets.only(right: 10,top: 20),
              child: Text('Column 1',
                style: TextStyle(color: Colors.white),),

            ),

          ],
        ),


      ],
    ),



    Container(
      margin: EdgeInsets.only(top: 10),


      child: Align(
        alignment: Alignment.bottomRight,

        child: Container(
          margin: EdgeInsets.only(top: 20,right: 10),
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Set the background color here
            ),

            onPressed: () {
              // Button action here
            },
            child: Text('View Details',
              style: TextStyle(
                  color: Colors.black
              ),),
          ),
        ),

      ),
    )
    ],


    ),





      );
  }



}










