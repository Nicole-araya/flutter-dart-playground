
import 'package:flutter/material.dart';

/*
 * CHECKBOX
 * RADIO BUTTON
 * SLIDER 
 * SWITCH
 */

class SelectionWidgets extends StatefulWidget {
  const SelectionWidgets({super.key});

  @override
  State<SelectionWidgets> createState() => _SelectionWidgetsState();
}

class _SelectionWidgetsState extends State<SelectionWidgets> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selection Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                    debugPrint('Checkbox is ${isChecked ? 'checked' : 'unchecked'}');
                  });
                },
              ),
              RadioGroup<int>(
                groupValue: isChecked ? 1 : 0,
                onChanged: (int? value) {
                  setState(() {
                    isChecked = value == 1;
                    debugPrint('Radio button is ${isChecked ? 'selected' : 'deselected'}');
                  });
                },
                child: const Column(
                  children: [
                    Radio<int>(value: 1),
                    Radio<int>(value: 0),
                  ],
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1, // más delgado
                ),
                child: SizedBox(
                  width: 180,
                  child: Slider(
                    value: isChecked ? 1.0 : 0.0,
                    onChanged: (double value) {
                      setState(() {
                        isChecked = value == 1.0;
                      });
                    },
                    min: 0.0,
                    max: 1.0,
                  ),
                ),
              ),
              Switch(
                value: isChecked,
                onChanged: (bool value) {
                  setState(() {
                    isChecked = value;
                    debugPrint('Switch is ${isChecked ? 'on' : 'off'}');
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}