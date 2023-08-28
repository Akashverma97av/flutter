import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainScreen extends StatelessWidget {
  const TrainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20.r),

            ///Adapt according to the smaller of width or height
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.5.sh, //50% of our screen height
                      width: 0.5.sw, //50% of our screen width
                      child: Icon(Icons.directions_train,size: 0.5.sw,color: Colors.blue,),
                    ),
                    Text("Train",
                        style: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.w700)),
                    //adapt font
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting Industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 16.sp, color: Colors.grey)),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}