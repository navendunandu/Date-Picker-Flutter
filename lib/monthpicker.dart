import 'package:date_pickers/yearpicker.dart';
import 'package:flutter/material.dart';

class MonthPicker extends StatefulWidget {
  const MonthPicker({super.key});

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
 int selectedMonth = DateTime.now().month;
  final List<String> months = [
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Month')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Month: ${months[selectedMonth - 1]}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150, // Adjust height for a better look
              child: ListWheelScrollView.useDelegate(
                overAndUnderCenterOpacity: .2,
                itemExtent: 50, // Height of each item
                physics: FixedExtentScrollPhysics(),
                diameterRatio: 2.5, // Controls the curvature
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedMonth = index + 1;
                  });
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: selectedMonth == index + 1 ? Border(
                          top: BorderSide(
                            color: Colors.black
                          ),
                          bottom: BorderSide(
                            color: Colors.black
                          ),
                        ):null
                      ),
                      child: Center(
                        child: Text(
                          months[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    );
                  },
                  childCount: months.length,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => YearPickerScreen(),));
            }, child: Text("Select Year"))
          ],
        ),
      ),
    );
  }
}