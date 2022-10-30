import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Main Courses',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.orange,
        secondary: Colors.blue,
      )),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("School Menu"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menu(day: 'Monday')));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('../assets/beans.jpg',
                                height: 200, width: 250, fit: BoxFit.fill),
                            Text("Monday")
                          ]))),
                  Expanded(
                      child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Menu(day: 'Tuesday')));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('../assets/chicken.jpg',
                                height: 200, width: 250, fit: BoxFit.fill),
                            Text("Tuesday")
                          ]))),
                  Expanded(
                      child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Menu(day: 'Wednesday')));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('../assets/ramen.jpg',
                                height: 200, width: 250, fit: BoxFit.fill),
                            Text("Wednesday")
                          ]))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Menu(day: 'Thursday')));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('../assets/steak.jpg',
                                height: 200, width: 270, fit: BoxFit.fill),
                            Text("Thursday")
                          ]))),
                  Expanded(
                      child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menu(day: 'Friday')));
                          },
                          child: Column(children: <Widget>[
                            Image.asset('../assets/egg.jpg',
                                height: 200, width: 270, fit: BoxFit.fill),
                            Text("Friday")
                          ]))),
                ],
              )
            ],
          )),
    );
  }
}
