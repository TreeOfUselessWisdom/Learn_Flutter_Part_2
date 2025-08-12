import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('V'),),
                  title: Text('Vadim'),
                  subtitle: Text('Na hoy'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Online')
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('YP'),),
                  title: Text('Yevgeny Prigozhin'),
                  subtitle: Text('War Thunder, это компьютерная игра.'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Online')
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('VZ'),),
                  title: Text('Volodymyr Zelenskyy'),
                  subtitle: Text('Hello Biden its Zelenskyy, I need 5 billion rockets......'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Online')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
