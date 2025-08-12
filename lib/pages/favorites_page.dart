import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text('V'),),
                title: Text('Vadim'),
                subtitle: Text('Added Last year'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 10),
                    Icon(Icons.video_call),
                  ],
                ),
                ),
              ),
            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text('YP'),),
                title: Text('Yevgeny Prigozhin'),
                subtitle: Text('Added 5 years ago'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 10),
                    Icon(Icons.video_call),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(child: Text('VZ'),),
                title: Text('Volodymyr Zelenskyy'),
                subtitle: Text('Added 2 years ago'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 10),
                    Icon(Icons.video_call),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
