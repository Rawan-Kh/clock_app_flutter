import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {

  final CustomTimerController _controller = CustomTimerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTimer(
            controller: _controller,
            begin: Duration(days: 1),
            end: Duration(),
            builder: (time){
              return Text(
                "${time.hours}:${time.minutes}:${time.seconds}:${time.milliseconds}",
                style: TextStyle(fontSize:24.0),
              );
            }
          ),
           SizedBox(height: 70,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              ElevatedButton(
                onPressed:(){
                  _controller.start();
                },
                child: const Text('start'),
                 style: ElevatedButton.styleFrom(
                   elevation: 5,
                   primary: Colors.green,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ) ,
              ),
                  ElevatedButton(
                onPressed:(){
                  _controller.pause();
                },
                child: const Text('pause'),
                 style: ElevatedButton.styleFrom(
                   elevation: 5,
                   primary: Colors.red,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ) ,
              ),
                  ElevatedButton(
                onPressed:(){
                  _controller.reset();
                },
                child: const Text('reset'),
                 style: ElevatedButton.styleFrom(
                   elevation: 5,
                   primary: Colors.blue,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
                 ) ,
              ),
            ]
          )
        ],
      ),
    );
  }
}
