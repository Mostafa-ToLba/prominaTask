
import 'package:flutter/material.dart';

var dateController = TextEditingController();
var StarttimeController = TextEditingController();
var EndtimeController = TextEditingController();
DateTime selectedDate = DateTime.now();
TimeOfDay selectedTime = TimeOfDay.now();
Future selectDate(BuildContext context) async {
  await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime.now(),
    lastDate: DateTime.parse('2023-10-30'),);
}
Future selectTime(BuildContext context,{time}) async {
  showTimePicker(context: context,
      initialTime: TimeOfDay.now()).then((
      value) {
    print(value!.format(context));
    time.text = value.format(context).toString();
  });
}