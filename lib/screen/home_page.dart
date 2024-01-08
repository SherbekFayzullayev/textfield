import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textfield = TextEditingController();
  TextEditingController textfield1 = TextEditingController();
  TextEditingController textfield2 = TextEditingController();
  num result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: textfield,
            ),
          ),
          Text(textfield.text),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(controller: textfield1),
          ),
          Center(
            child: Text(
              "$result",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          // Text(textfield1.text)
          Row(
            children: [
              FloatingActionButton(
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      result = int.parse(textfield.text) +
                          int.parse(textfield1.text);
                      textfield.clear();
                      textfield1.clear();
                    });
                  }),
              FloatingActionButton(
                  child: Text('-'),
                  onPressed: () {
                    setState(() {
                      result = int.parse(textfield.text) -
                          int.parse(textfield1.text);
                      textfield.clear();
                      textfield1.clear();
                    });
                  }),
              FloatingActionButton(
                  child: Text('*'),
                  onPressed: () {
                    setState(() {
                      result = int.parse(textfield.text) *
                          int.parse(textfield1.text);
                      textfield.clear();
                      textfield1.clear();
                    });
                  }),
              FloatingActionButton(
                  child: Text('/'),
                  onPressed: () {
                    setState(() {
                      result = int.parse(textfield.text) /
                          int.parse(textfield1.text);
                      textfield.clear();
                      textfield1.clear();
                    });
                  }),
            ],
          )
        ],
      ),
    );
  }
}
