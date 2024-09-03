import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showIOSDateTimePicker({
  required BuildContext context,
  required Function(DateTime) onDateTimePicked,
}) {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  void showTimePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 350,
        color: Colors.amber,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      DateTime finalDateTime = DateTime(
                        selectedDate.year,
                        selectedDate.month,
                        selectedDate.day,
                        selectedTime.hour,
                        selectedTime.minute,
                      );
                      onDateTimePicked(finalDateTime);
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Select",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: CupertinoDatePicker(
                initialDateTime: DateTime.now().add(const Duration(seconds: 1)),
                minimumDate: DateTime.now(),
                mode: CupertinoDatePickerMode.time,
                use24hFormat: false,
                onDateTimeChanged: (DateTime newTime) {
                  selectedTime = TimeOfDay.fromDateTime(newTime);
                },
                backgroundColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 350,
        color: Colors.amber,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showTimePicker();
                    },
                    child: Text(
                      "Next",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now().add(const Duration(seconds: 1)),
                minimumDate: DateTime.now(),
                maximumDate: DateTime.now().add(const Duration(hours: 8760)),
                onDateTimeChanged: (val) {
                  selectedDate = val;
                },
                backgroundColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDatePicker();
}

void showIOSDatePicker(
    {required BuildContext context, required Function onImageGet}) {
  // DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  DateTime dateTime = DateTime.now();
  showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 350,
      color: Colors.amber,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    onImageGet(dateTime);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Select",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              minimumDate: DateTime(DateTime.now().year - 10),
              maximumDate: DateTime(DateTime.now().year + 10),
              onDateTimeChanged: (val) {
                dateTime = val;
              },
              backgroundColor: Colors.amber,
            ),
          ),
        ],
      ),
    ),
  );
}

void showIOSTimePicker(
    {required BuildContext context, required Function onImageGet}) {
  // DateFormat dateFormat = DateFormat("yyyy-MM-dd");

  DateTime dateTime = DateTime.now();

  showCupertinoModalPopup(
    context: context,
    builder: (_) => Container(
      height: 350,
      color: Colors.amber,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    onImageGet(dateTime);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Select",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.time,
              use24hFormat: false,
              // This is called when the user changes the time.
              onDateTimeChanged: (DateTime newTime) {
                dateTime = newTime;
                // onImageGet(newTime);
              },
            ),
          ),
        ],
      ),
    ),
  );
}
