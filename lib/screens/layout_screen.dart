import 'package:flutter/material.dart';
import 'package:clock_app_flutter/screens/timer_screen.dart';
import 'package:clock_app_flutter/screens/stop_watch.dart';
import 'package:clock_app_flutter/screens/alarm_screen.dart';
import 'package:clock_app_flutter/screens/clock_screen.dart';

void main() {
  runApp(const HomeLayout());
}

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3 ,
      child: Scaffold(
        appBar: AppBar(
      title: const Text('clock app'),
      centerTitle: true,
      bottom: TabBar(
        tabs:[
           Tab(
            icon:Image.asset('assets/images/clock_icon.png',height: 30,),
            child:const Text('Clock')
          ),
           Tab(
            icon:Image.asset('assets/images/alarm_icon.png',height: 30,),
            child:const Text('Alarm')
          ),
          Tab(
            // icon: Icons.timer,
            icon:Image.asset('assets/images/timer_icon.png',height: 30,),
            child:const Text('Timer'),
          ),
          
        ]
      ),
        ),
      body: TabBarView(
        children: [
         ClockScreen(),
          AlarmScreen(),
          TimerScreen(),

        ],
      ),
     )
      );
  }
}
