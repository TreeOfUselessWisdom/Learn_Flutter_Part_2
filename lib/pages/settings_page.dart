import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TimeOfDay? time;
  DateTime? date;
  TextEditingController ouiouiController = TextEditingController();
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Settings'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {

            },

            itemBuilder: (context) =>
            [
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
            // TEXT FIELD
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: ouiouiController,
                obscureText: hide, // hides input (good for password fields)
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'What is at the end of the Rainbow?',
                  hintText: 'Riddle',
                  prefixIcon: const Icon(Icons.text_fields),
                  suffixIcon: IconButton(
                    icon: Icon(
                      hide ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        hide = !hide; // toggle visibility
                      });
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
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
}