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



    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
    body:
    Column(

      children: <Widget>[
        SizedBox(height: 30),

        getListviewCoupon()
      ],
    )





    );
  }

  Expanded getListviewCoupon() {
    return Expanded(

        child: ListView.separated(
          padding: EdgeInsets.only(bottom: 20),
            scrollDirection: Axis.vertical,
            separatorBuilder: (context,index)=>SizedBox(height: 12,),
            itemCount: coupons.length,
            itemBuilder: (BuildContext context, int index) {

              return Container(

                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
              color: const Color(0xFF00aaf8),
              borderRadius: BorderRadius.circular(15.0),

              // Adjust the radius to your preference
              ),
                child: Column(


              crossAxisAlignment:CrossAxisAlignment.start ,


              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.only(left:10,top: 5),
                width: 210, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                Text(coupons[index].couponNo,
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                  ),

                ),



              ),
              Container(

              padding: EdgeInsets.only(right:10),
              width: 200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
              child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
              Text(coupons[index].packageName,
                textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w500,

              fontSize: 12),

              )
              )

                  ],

                ),



                Container(

                  padding: EdgeInsets.only(left:10,top: 5),
                  width: 200, //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                  child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                  Text(coupons[index].customerName,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w500,

                        fontSize: 12),
                  ),
                ),




                Row(

                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left:10,top: 5),
                      width: 200,
                      //This helps the text widget know what the maximum width is again! You may also opt to use an Expanded widget instead of a Container widget, if you want to use all remaining space.
                      child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                      Text(coupons[index].allocatedRmn,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500,

                            fontSize: 12),
                      ),
                    ),



                    Container(
                        padding: EdgeInsets.only(right:10,top: 5),
                        width: 200,
                        child:  //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                        Text(coupons[index].consumedRmn,
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),

                        )
                    ),



                  ],),
                Row(

                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      padding: EdgeInsets.only(left:10,top: 5),
                      width: 200,

                      child:
                      Text(coupons[index].allocatedDate,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500,

                            fontSize: 12),
                      ),
                    ),



                    Container(
                        padding: EdgeInsets.only(right:10,top: 5),
                        width: 200,
                        child:
                        Text(coupons[index].consumedDate,
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),

                        )
                    ),



                  ],),
                Container(
                  padding: EdgeInsets.only(left:10,top: 3),
                  width: 210,
                  child:
                  Text(coupons[index].expiredOn,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),

                  ),



                ),
                Row(

                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left:10,top: 5),
                      width: 200,

                      child:
                      Text(coupons[index].ottCustomerId,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500,

                            fontSize: 12),
                      ),
                    ),



                    Container(
                        padding: EdgeInsets.only(right:10,top: 5),
                        width: 200,
                        child:
                        Text(coupons[index].watchoCustomerId,
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),

                        )
                    ),



                  ],),

                  Container(

                      padding: EdgeInsets.only(left:10,top: 5),
                      width: 210,
                      child:
                      Text(coupons[index].transactionId,
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),

                      )),


                  Row(

                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [

                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),

                            onPressed: () {
                              // Button action here
                            },
                            child: Text('View Details',
                              style: TextStyle(
                                  color: Color(0xFF00aaf8),
                              ),),
                          ),
                        ),
                      ]


                  ),







              ]  )
              );



            }),
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





}










