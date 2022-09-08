
import 'package:flutter/material.dart';

var dateController = TextEditingController();
var StarttimeController = TextEditingController();
var EndtimeController = TextEditingController();
DateTime selectedDate = DateTime.now();
TimeOfDay selectedTime = TimeOfDay.now();

Future selectTime(BuildContext context,{time}) async {
  showTimePicker(context: context,
      initialTime: TimeOfDay.now()).then((
      value) {
    print(value!.format(context));
    time.text = value.format(context).toString();
  });
}