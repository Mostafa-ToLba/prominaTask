
 import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:prominatask/shared/Components/components.dart';
import 'package:prominatask/shared/constans/constans.dart';
import 'package:sizer/sizer.dart';

import '../../shared/styles/colors/colors.dart';

class SecondPageScreen extends StatefulWidget {
    SecondPageScreen({Key? key}) : super(key: key);

  @override
  State<SecondPageScreen> createState() => _SecondPageScreenState();
}

class _SecondPageScreenState extends State<SecondPageScreen> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
         toolbarHeight: 7.6.h,
         leadingWidth: 14.2.w,
       leading: Padding(
         padding:  EdgeInsets.only(top: 3.h,left: 1.w),
         child: MaterialButton(
             highlightColor: Colors.transparent,
             onPressed: ()
             {
               Navigator.pop(context);
             },
             child: Image(image: AssetImage('assets/images/arrow_left.png',),height: 10.h,width: 6.w,)),
       ),
         actions:
         [
         Padding(
           padding:  EdgeInsets.only(top: 3.h,right:  7.w),
           child: Image(image: AssetImage('assets/images/menu.png',),height: 3.5.h,width: 7.w),
         ),
         ],
       ),
       body: SingleChildScrollView(
         child: Padding(
           padding:  EdgeInsets.all(16.sp),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children:
             [
               Row(
                   children:
               [
                 Text('Create New Task',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500),),
                 Spacer(),
                 Container(
                     child: Image(image: AssetImage('assets/images/list.png',),
                       height: 10.h,color: lightLayoutColor,
                       width: 12.w,
                     )
                 ),
               ]),
               SizedBox(height: 1.5.h),
               Text('Task Name',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
               defultformfield(
                 textStyle: TextStyle(color:Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w500),
               contentPadding: EdgeInsets.only(bottom: 1.h),
               ),
               SizedBox(height: 4.h,),
               Row(
                 children: [
                   Text('Select Category',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
                   Spacer(),
                   Text('See all',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
                 ],
               ),
               SizedBox(height: 3.h,),
               Container(
                 height: 4.h,
                 child: ListView.separated(
                     shrinkWrap: true,
                     physics: ScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     padding: EdgeInsets.zero,
                     itemBuilder: (BuildContext context, int index) => ListOfCategory(CategoryList[index]),
                     separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 4.w),
                     itemCount: 5),
               ),
               SizedBox(height: 5.h,),
               Text('Date',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
               Row(
                children:
                [
              Container(
                width: 50.w,height: 4.h,
                child: defultformfield(
                  textStyle: TextStyle(color:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w500),
                  contentPadding: EdgeInsets.only(bottom: 1.h),
                  controle:dateController,
                  ontap: ()
                  {
                    selectDate(context).then((value)
                    {
                      setState(() {
                        dateController.text =DateFormat.yMMMd().format(value!);
                      });
                    });
                  }
                ),
              ),
                  Spacer(),
                  CircleAvatar(backgroundColor: layoutColor,radius: 16.sp,
                  child: Image(image: AssetImage('assets/images/calendar.png',),height: 3.h,color: Colors.white,),
                  ),
                ],
               ),
               SizedBox(height: 4.h,),
               Row(
                 children:
                 [
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:
                       [
                         Text('Start time',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
                         Container(
                           height: 4.4.h,
                           child: defultformfield(

                               suffix: Image(image: AssetImage('assets/images/down-arrow.png',),height: 15.sp,color:lightLayoutColor ,),
                               textStyle: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),
                               contentPadding: EdgeInsets.only(bottom: 1.2.h),
                               controle:StarttimeController,
                               ontap: ()
                               {
                                 selectTime(context,time: StarttimeController);
                               }
                           ),
                         ),
                       ],

                     ),
                   ),
                   SizedBox(width: 20.w,),
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:
                       [
                         Text('End time',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
                         Container(
                           height: 4.4.h,
                           child: defultformfield(

                               suffix: Image(image: AssetImage('assets/images/down-arrow.png',),height: 15.sp,color:lightLayoutColor ,),
                               textStyle: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),
                               contentPadding: EdgeInsets.only(bottom: 1.2.h),
                               controle:EndtimeController,
                               ontap: ()
                               {
                                 selectTime(context,time: EndtimeController);
                               }
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 4.h,),
               Text('Description',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: lightLayoutColor),),
               defultformfield(
                 textStyle: TextStyle(color:Colors.black,fontSize: 13.sp,fontWeight: FontWeight.w400),
                 contentPadding: EdgeInsets.only(bottom: 1.h),
               ),
               SizedBox(height: 5.h,),
               Center(
                 child: Container(
           width: 68.w,height: 6.5.h,
           child: Center(child: Text('Create Task',style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.w600),)),
           decoration: BoxDecoration(color: layoutColor,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),
             border: Border.all(color: layoutColor,width: .8.sp),
           ),

         ),
               ),
             ],
           ),
         ),
       ),
     );
   }
}
