
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prominatask/screens/secondPageScreen/secondPage.dart';
import 'package:prominatask/shared/Components/components.dart';
import 'package:prominatask/shared/styles/colors/colors.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:scale_button/scale_button.dart';
import 'package:sizer/sizer.dart';
 import 'dart:ui' as ui;

class FirstPageScreen extends StatelessWidget {
   const FirstPageScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return AnnotatedRegion<SystemUiOverlayStyle>(
       value:const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent,
         statusBarIconBrightness: Brightness.dark,
       ) ,
       child: Scaffold(
         backgroundColor:layoutColor,
         body: Column(
           children: [
             Container(
               height: 47.h,
               child: Stack(
                 alignment: AlignmentDirectional.topStart,
                 children: [
                   Container(color:layoutColor,),
                   Stack(
                     alignment: Alignment.centerLeft,
                     children: [
                       CustomPaint(
                         size: Size(100.w,(100.w*0.5).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                         painter: RPSCustomPainter(),
                         child: Container(height: 47.h,),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(bottom: 25.h,left: 5.w),
                         child: Image(image: AssetImage('assets/images/menu.png',),height: 3.5.h),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(bottom: 25.h,left: 18.w),
                         child: Image(image: AssetImage('assets/images/notification.png',),height: 3.4.h,color:layoutColor,),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(bottom: 8.h),
                         child: Row(
                           children:
                           [
                             Padding(
                               padding:  EdgeInsets.only(left: 6.w),
                               child: Text('My Task',style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.w700)),
                             ),
                             Spacer(),
                             Padding(
                               padding:  EdgeInsets.only(right: 6.w),
                               child: ScaleButton(
                                 bound: .1,
                                 reverse: true,
                                 child: InkWell(
                                   onTap: ()
                                   {
                                     Navigator.push(context, MaterialPageRoute (
                                       builder: (BuildContext context) =>  SecondPageScreen(),
                                     ),);
                                   },
                                   child: Container(
                                     decoration:
                                     BoxDecoration(shape: BoxShape.rectangle,color: layoutColor,borderRadius:BorderRadius.circular(10) ),height: 38.sp,width: 13.w,
                                   child: Center(child: Icon(MdiIcons.plus,color: Colors.white,size: 20.sp,)),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Row(
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left: 6.w,top: 24.sp),
                             child: Text('Today',style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600)),
                               ),
                           Spacer(),
                           Padding(
                             padding:  EdgeInsets.only(right: 6.w,top:  24.sp),
                             child: Text('Monday,1 June',style: TextStyle(color: lightBlue,fontSize: 11.sp)),
                           ),
                         ],
                       ),
                       Padding(
                         padding:  EdgeInsets.only(top: 22.h,left: 6.w),
                         child: Container(
                             height: 42.sp,width: double.infinity,
                           child: Container(
                             child: ListView.separated(padding: EdgeInsetsDirectional.zero,
                               scrollDirection: Axis.horizontal,
                                 itemBuilder:(BuildContext context, int index) =>timeOfTheDay(numbers[index],days[index],) ,
                                 separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 3.w),
                                 itemCount: 10),
                           ),
                         ),
                       ),
                     ],
                   ),
                    Align(
                      alignment:AlignmentDirectional.topEnd,
                      child: Padding(
                        padding:  EdgeInsets.only(right: 5.w,top: 4.h,left: 8.sp,bottom: 25.sp,),
                        child: CircleAvatar(radius: 3.h,
                          backgroundImage:NetworkImage('https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80'),),
                      ),
                    ),
                 ],
               ),
             ),
             Expanded(
               child: RawScrollbar(
                 trackVisibility: true,scrollbarOrientation:ScrollbarOrientation.left,thumbColor: Colors.white,crossAxisMargin: 6.w,
                 thickness: 1.5.sp,
                 child: ListView(
                     shrinkWrap: true,
                     padding: EdgeInsets.zero,
                     children: widgets(),
                     ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }




