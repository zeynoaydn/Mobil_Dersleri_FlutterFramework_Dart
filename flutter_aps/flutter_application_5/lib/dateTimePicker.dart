import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime ucAyOncesi = DateTime(2022, now.month - 3);
    DateTime onGunSonrasi = DateTime(2022, 12, now.day + 10);
    TimeOfDay suAnkiSaat = TimeOfDay.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Time Picker'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: now,
                    firstDate: ucAyOncesi,
                    lastDate: onGunSonrasi,
                  );
                },
                child: Text('Tarih seç'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade200),
              ),
              ElevatedButton(
                onPressed: () {
                  showTimePicker(context: context, initialTime: suAnkiSaat);
                },
                child: Text('Saat seç'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
