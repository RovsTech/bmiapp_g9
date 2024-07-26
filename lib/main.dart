import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 100;
  double weight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffaa307),
        centerTitle: true,
        title: Text(
          "Calcular IMC",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Altura:",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "cm",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 40,
              max: 220,
              activeColor: Color(0xffd00000),
              onChanged: (double value) {
                height = value;
                setState(() {});
              },
            ),
            Text(
              "Peso:",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  weight.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "kg",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Slider(
              value: weight,
              min: 20,
              max: 220,
              activeColor: Color(0xff4f772d),
              onChanged: (double value) {
                weight = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 52.0,
              width: 200.0,
              child: ElevatedButton(
                child: Text(
                  "Calcular",
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                  0xffccff33,
                )),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "23.5",
              style: TextStyle(
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Normal",
              style: TextStyle(
                color: Color(0xff38b000),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Peso Correcto, Sigue Cuidandote.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/images/obesidad3.png",
                //height: 250,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
