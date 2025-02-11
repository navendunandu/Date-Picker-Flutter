import 'package:date_pickers/monthpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
 DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Select Date')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Date: ${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              
              child: DatePickerWidget(
                looping: false, // Disable looping
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                initialDate: selectedDate,
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.en_us,
                onChange: (DateTime newDate, _) {
                  setState(() {
                    selectedDate = newDate;
                  });
                },
                pickerTheme: DateTimePickerTheme(
                  
                  backgroundColor: Colors.white,
                  itemTextStyle: TextStyle(color: Colors.black, fontSize: 18),
                  dividerColor: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MonthPicker()
              ,));
            }, child: Text("Show Month"))
          ],
        ),
      ),
    );
  }
}