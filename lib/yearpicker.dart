import 'package:flutter/material.dart';

class YearPickerScreen extends StatefulWidget {
  const YearPickerScreen({super.key});

  @override
  State<YearPickerScreen> createState() => _YearPickerScreenState();
}

class _YearPickerScreenState extends State<YearPickerScreen> {
  int currentYear = DateTime.now().year;
  late int startYear;
  late int endYear;
  late int selectedYear;

  @override
  void initState() {
    super.initState();
    startYear = currentYear - 100; // Users up to 100 years old
    endYear = currentYear - 18; // Only 18+ years allowed
    selectedYear = endYear; // Default selection to latest allowed year
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Year (18+ Only)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Year: $selectedYear",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150, // Adjust height for better view
              child: ListWheelScrollView.useDelegate(
                itemExtent: 50, // Height of each item
                physics: FixedExtentScrollPhysics(),
                diameterRatio: 2.5, // Controls the curvature effect
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedYear = startYear + index;
                  });
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: selectedYear == index + startYear ? Border(
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
                          "${startYear + index}",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    );
                  },
                  childCount: endYear - startYear + 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}