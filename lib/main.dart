import 'package:first_responsive_screen_ui/bicycle_screen.dart';
import 'package:first_responsive_screen_ui/train_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'car_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, child) => MaterialApp(
          title: 'Responsiveness Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: 'Car',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_transit),
                    text: 'Train',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                    text: 'Bicycle',
                  ),
                ]),
                title: const Text('Tabs and Responsive UI Demo'),
              ),
              body: const TabBarView(
                  children: [
                    CarScreen(),
                    TrainScreen(),
                    BicycleScreen(),
                  ]),
            ),
          )),
    );
  }
}
