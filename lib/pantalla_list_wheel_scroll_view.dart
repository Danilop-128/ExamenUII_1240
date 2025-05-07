import 'package:flutter/material.dart';
import '/pages2/hours.dart';
import '/pages2/minutes.dart';
import '/pages2/am_pm.dart';

class PantallaListWheelScrollView extends StatefulWidget {
  const PantallaListWheelScrollView({Key? key}) : super(key: key);

  @override
  _PantallaListWheelScrollViewState createState() =>
      _PantallaListWheelScrollViewState();
}

class _PantallaListWheelScrollViewState
    extends State<PantallaListWheelScrollView> {
  int currentHour = 0;
  int currentMinute = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List wheel"),
      ),
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // hours wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                // do stuff
                setState(() {
                  currentHour = value;
                });
              },
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return MyHours(
                    hours: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10,
            child: Text(
              ':',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // minutes wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                // do stuff
                setState(() {
                  currentMinute = value;
                });
              },
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                  return MyMinutes(
                    minutes: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          // am/pm wheel
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return const MyAMPM(
                      isItAM: true,
                    );
                  } else {
                    return const MyAMPM(
                      isItAM: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
