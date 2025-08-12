import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TimeOfDay? time;
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar : AppBar(
        title : const Text ('Settings'),
        actions : [
          PopupMenuButton(
            onSelected: (value) {

            },

              itemBuilder: (context) => [
            const PopupMenuItem(child: Text('Option 1')),
            const PopupMenuItem(child: Text('Option 2')),
          ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
              final t = await showTimePicker(

                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (t != null) {
                setState(() => time = t);
              }
            },
              child: Text(time == null
                  ? 'Pick Time'
                  : time!.format(context)),
            ),
            const SizedBox(height: 30),

            // DATE PICKER BUTTON
            ElevatedButton(
              onPressed: () async {
                final d = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (d != null) {
                  setState(() => date = d);
                }
              },
              child: Text(date == null
                  ? 'Pick Date'
                  : "${date!.day}/${date!.month}/${date!.year}"),
            ),
          ],
        ), 
      ),
    );
  }
