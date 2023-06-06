import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tccerto/constants/app_style.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime? _focusedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = _selectedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Data',
            style: AppStyle.headingOne,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: TableCalendar(
                    calendarFormat: _calendarFormat,
                    focusedDay: _focusedDay!,
                    firstDay: DateTime(2023),
                    lastDay: DateTime(2024),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                      Navigator.pop(context); // Fecha o diálogo após a seleção da data
                    },
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(CupertinoIcons.calendar),
                  const SizedBox(width: 8),
                  Text(
                    '${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
