import 'package:flutter/material.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  String? date;
  String? time;

  List listDate = [];
  List listTime = [];

  //void addToList() {
  //listDate.add(date);
   // listTime.add(time);
  //}
  //  void addToList(String date ,String time) {
  //   listDate.add(date);
  //   listTime.add(time);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDateDialog().then((value) {
            setState(() {
              print(value);
              date = value;
            });
            //addToList();
           listDate.add(date);
          });
          showTimeDialog().then((value) {
            setState(() {
              time = value;
            });
           // addToList();
           listTime.add(time);
          });

        },
        child: Icon(Icons.add),
      ),


      body: listTime.isEmpty ?
      Center(
        child: 
        Text('No Alarms set.'),
      ) :ListView.builder(
        itemBuilder: (context, index) {
          return buildItem(listDate[index], listTime[index]);
        },
        itemCount: listTime.length,
      ),
    );
  }

  Widget buildItem(String date, String time) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.label,
                          color: Colors.grey,
                          size: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                          'Alarm',
                          style: TextStyle(color: Colors.teal),
                        ),
                        ),
                          Text(
                      date,
                      style: TextStyle(color: Colors.teal),
                    ),
                     SizedBox(
                          width: 10,
                        ),
                      Text(
                      time,
                      style: TextStyle(color: Colors.black),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: Container(
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future showDateDialog() async {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2025),
    );
    // print(date);
    return date.toString().substring(0, 10);
  }

  Future showTimeDialog() async {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    var localization = MaterialLocalizations.of(context);
    localization.formatTimeOfDay(time!).toString();
    // print(time);
    // print(localization.formatTimeOfDay(time).toString());
    return localization.formatTimeOfDay(time).toString();
  }
}
