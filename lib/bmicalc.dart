import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController Weight = TextEditingController();
  TextEditingController Height = TextEditingController();
  double h_value = 0;
  double w_value = 0;
  double result = 0;
  void calculate() {
    h_value = double.parse(Height.text)/100;
    w_value = double.parse(Weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: Height,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                hintText: 'Height'),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: Weight,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                hintText: 'Weight'),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {calculate();},
              style: TextButton.styleFrom(backgroundColor: Colors.white24),
              child: Text("Calculate")),
          SizedBox(
            height: 30,
          ),
          Text('Result:$result')

        ],
      ),
    );
  }
}
