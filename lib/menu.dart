import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  final String day;

  const Menu({Key? key, required this.day}) : super(key: key);

  @override
  MenuState createState() => MenuState(day: day);
}


class MenuState extends State<Menu> {
  final String day;

  final details = {
    "Monday": [
      "../assets/beans.jpg",
      "../assets/chcupcake.jpg",
      "../assets/danish.jpg"
    ],
    "Tuesday": [
      "../assets/chicken.jpg",
      "../assets/cheese.jpg",
      "../assets/chcupcake.jpg"
    ],
    "Wednesday": [
      "../assets/ramen.jpg",
      "../assets/cupcake.jpg",
      "../assets/salad.jpg"
    ],
    "Thursday": [
      "../assets/steak.jpg",
      "../assets/danish.jpg",
      "../assets/pizza.jpg"
    ],
    "Friday": [
      "../assets/egg.jpg",
      "../assets/pizza.jpg",
      "../assets/salad.jpg"
    ]
  };

  MenuState({required this.day});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '$day',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('$day Menu'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      child: Column(
                children: <Widget>[
                  Image.asset(details[day]![0],
                      height: 300, width: 400, fit: BoxFit.fill),
                  Text("Main Entree")
                ],
              )))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: InkWell(
                      child: Column(children: <Widget>[
                Image.asset(details[day]![1],
                    height: 200, width: 250, fit: BoxFit.fill),
                Text("Entree 2")
              ]))),
              Expanded(
                  child: InkWell(
                      child: Column(children: <Widget>[
                Image.asset(details[day]![2],
                    height: 200, width: 250, fit: BoxFit.fill),
                Text("Entree 3")
              ]))),
            ],
          )
        ]),
      ),
    );
  }
}
