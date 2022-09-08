import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prominatask/shared/styles/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget defultformfield({
  TextEditingController? controle,
  var onfieldsubmite,
  var validate,
  var onchange,
  var ontap,
  TextInputType? keyboard,
 // String label,
  IconData? prefix,
  Widget? suffix,
  bool isPassword = false,
  var suffixPressed,
  var textStyle,
  var contentPadding,
}) =>
    TextFormField(cursorColor: lightLayoutColor,
      controller: controle,
      onFieldSubmitted: onfieldsubmite,
      onTap: ontap,
      validator: validate,
      onChanged: onchange,
      keyboardType: keyboard,
      obscureText: isPassword,
      style: textStyle,
      decoration: InputDecoration(
          focusColor: lightLayoutColor,
          fillColor: lightLayoutColor,
          hoverColor:lightLayoutColor ,
          iconColor: lightLayoutColor,
          contentPadding: contentPadding,
          suffix:suffix ,
          label: Text(
            '',
            style: textStyle,
          ),
          enabledBorder:  UnderlineInputBorder(borderSide: BorderSide(
              color: lightLayoutColor,style: BorderStyle.solid
          ),),
      ),
    );


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 252, 249, 249)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.quadraticBezierTo(size.width*-0.0017500,size.height*0.4730000,0,size.height*0.7200000);
    path0.cubicTo(size.width*-0.0050000,size.height*0.9340000,size.width*0.1210000,size.height*0.9120000,size.width*0.1330000,size.height*0.9120000);
    path0.cubicTo(size.width*0.3345000,size.height*0.9145000,size.width*0.8650000,size.height*0.9120000,size.width*0.9080000,size.height*0.9120000);
    path0.quadraticBezierTo(size.width*0.9705000,size.height*0.9140000,size.width,size.height*0.9940000);
    path0.quadraticBezierTo(size.width*0.9987500,size.height*0.5520000,size.width*0.9990000,size.height*0.3780000);
    path0.cubicTo(size.width*0.9342500,size.height*0.2105000,size.width*0.8322500,size.height*0.3425000,size.width*0.7740000,size.height*0.2740000);
    path0.cubicTo(size.width*0.6840000,size.height*0.1785000,size.width*0.8350000,size.height*0.0535000,size.width*0.6260000,size.height*0.0020000);
    path0.quadraticBezierTo(size.width*0.4287500,size.height*0.0030000,0,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


class timeOfTheDay extends StatefulWidget {
  String number;

  String day;

  timeOfTheDay(String this.number, String this.day,  {Key? key,}) : super(key: key);

  @override
  _timeOfTheDayState createState() => _timeOfTheDayState();
}

class _timeOfTheDayState extends State<timeOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        setState(() {
          colorOfContainer=!colorOfContainer;
        });
      },
      child: Container(
        decoration:
        BoxDecoration(shape: BoxShape.rectangle,color: colorOfContainer==true?layoutColor:Colors.white,borderRadius:BorderRadius.circular(10),
          border: Border.all(color: layoutColor),
        ),width: 13.w,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 3.sp),
              child: Center(child: Text('${widget.number}',style: TextStyle(color:colorOfContainer?Colors.white: Colors.black,fontSize: 18.sp,fontWeight:FontWeight.w600),)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 1.5.sp),
              child: Center(child: Text('${widget.day}',style: TextStyle(color: colorOfContainer?Colors.white:lightBlue,fontSize: 12.sp),)),
            ),
          ],
        ),
      ),
    );
  }
}


List<String> numbers = ['01','02','03','04','05','06','07','08','09','10'];
List<String> days = ['M','T','W','T','F','S','S','M','T','W'];
bool colorOfContainer =false;

List<Widget>widgets()=>
    [
      Padding(
        padding:  EdgeInsets.only(left: 20.w,),
        child: Container(
          height: 136.sp,
          width: 100.w,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 10.w),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                    height: 125.sp,width: 80.w,
                    child:Row(
                      children: [
                        Column(
                          children:
                          [
                            Padding(
                              padding:  EdgeInsets.only(right: 20.sp,left: 20.sp,top: 20.sp),
                              child: Row(
                                children:
                                [
                                  Container(

                                    decoration:
                                    BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1596813362035-3edcff0c2487?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),fit: BoxFit.cover),
                                    ),clipBehavior: Clip.antiAliasWithSaveLayer,
                                    height: 5.h,width: 8.w,
                                  ),
                                  SizedBox(width: 1.5.w,),
                                  Container(
                                    decoration:
                                    BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',),fit: BoxFit.cover),
                                    ),clipBehavior: Clip.antiAliasWithSaveLayer,
                                    height: 5.h,width: 7.w,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.sp,),
                            Padding(
                              padding:  EdgeInsets.only(left: 20.sp,right: 20.sp,),
                              child: Row(
                                children:
                                [
                                  Container(
                                    decoration:
                                    BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1514136649217-b627b4b9cfb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),fit: BoxFit.cover),
                                    ),clipBehavior: Clip.antiAliasWithSaveLayer,
                                    height: 5.h,width: 8.w,
                                  ),
                                  SizedBox(width: 1.5.w,),
                                  Container(
                                    height: 5.h,width: 7.5.w,clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration:
                                    BoxDecoration(shape: BoxShape.rectangle,color: layoutColor,borderRadius:BorderRadius.circular(6), ),
                                    child: IconButton(padding: EdgeInsets.zero,icon:Icon(MdiIcons.plus,color: Colors.white,size: 20.sp),onPressed: (){}),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 28.sp),
                          child: Column(
                            children:
                            [
                              Text('Team Meating',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                              SizedBox(height: 1.h,),
                              Text('Disuss all questions',style: TextStyle(fontSize: 10.5.sp,color: lightBlue),),
                              Text('about new projects',style: TextStyle(fontSize: 10.5.sp,color: lightBlue),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 8.w),
                child: Container(height: 32.sp,width: 28.w,
                  decoration:BoxDecoration(color:Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),child: Center(child: Text('10:00 AM',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w600),)), ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 4.h,),
      Padding(
        padding:  EdgeInsets.only(left: 20.w),
        child: Container(
          height: 136.sp,
          width: 100.w,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 10.w),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                    height: 125.sp,width: double.infinity,
                    child:Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 7.w),
                          child: CircleAvatar(
                            radius: 25.sp,
                            child: Icon(Icons.call,size: 25.sp,color: Colors.white,),backgroundColor: lightBlue,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 35.sp,left: 7.w),
                          child: Column(
                            children:
                            [
                              Text('Call the stylist',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                              SizedBox(height: 1.h,),
                              Text('Agree on an evening',style: TextStyle(fontSize: 10.5.sp,color: lightBlue),),
                              Text('look',style: TextStyle(fontSize: 10.5.sp,color: lightBlue),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 8.w),
                child: Container(height: 32.sp,width: 28.w,
                  decoration:BoxDecoration(color:Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10),)),child: Center(child: Text('11:00 AM',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w600),)), ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 4.h,),
      Padding(
        padding:  EdgeInsets.only(left: 20.w,),
        child: Container(
          height: 136.sp,
          width: 100.w,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 10.w),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                    height: 125.sp,width: 80.w,
                    child:Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 7.w),
                          child: CircleAvatar(
                            radius: 25.sp,
                            child: Icon(Icons.mail,size: 27.sp,color: Colors.white,),backgroundColor: lightBlue,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 35.sp,left: 7.w),
                          child: Column(
                            children:
                            [
                              Text('Check mail',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                              SizedBox(height: 1.h,),
                              Text('Write to the manager',style: TextStyle(fontSize: 10.5.sp,color: lightBlue),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 8.w),
                child: Container(height: 32.sp,width: 28.w,
                  decoration:BoxDecoration(color:Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),),child: Center(child: Text('12:00 PM',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w600),)), ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 4.h,),
    ];

Widget ListOfCategory(String categoryList) => Container(
  width: 25.w,
  child: Center(child: Text('${categoryList}',style: TextStyle(fontSize: 10.sp,color: lightLayoutColor),)),
  decoration: BoxDecoration(color: Colors.white,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),
    border: Border.all(color: layoutColor,width: .8.sp),
  ),

);

List<String> CategoryList = ['Development','Research','Design','BackEnd','FrontEnd',];