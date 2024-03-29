import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const ProgrammaticViewNavigation());

class ProgrammaticViewNavigation extends StatefulWidget {
  const ProgrammaticViewNavigation({super.key});

  @override
  ViewNavigationState createState() => ViewNavigationState();
}

class ViewNavigationState extends State<ProgrammaticViewNavigation> {
  final CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
              child: TextButton(
                child: const Text('Change view'),
                onPressed: () {
                  _controller.view = CalendarView.timelineWeek;
                },
              ),
            ),
            Expanded(
              child: SfCalendar(
                view: CalendarView.workWeek,
                controller: _controller,
              ),
            ),
          ],
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}