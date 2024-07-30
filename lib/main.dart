import 'dart:math';

//import 'package:flutter/cupertino.dart';
import 'package:bmiapp/bmi_calculate.dart';
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
  double height = 100.0;
  double weight = 75.0;
  double bmi = 20.0;
  String result = "Normal";
  String comment = "Peso Correcto, Sigue Cuidandote";
  String images = "imagen";

 void calculate(){
    bmi = weight / pow(height / 100, 2);
    if (bmi < 18) {
      result = "Bajo Peso";
      comment = "Debes alimentarte mejor y hacer Ejercicios";
      images = "assets/images/muy delgado.png";
    } else if (bmi <= 25) {
      result = "Peso Ideal";
      comment = "Estás en el Peso Correcto, Sigue Cuidandote";
      images = "assets/images/normal.png";
    } else if (bmi <= 30) {
      result = "Estás con SOBRE PESO";
      comment =
      "Debes cuidar tu Alimentación y empezar a Ejercitarte";
      images = "assets/images/imagen sobrepeso.png";
    } else if (bmi <= 35) {
      result = "Estás con Obesidad tipo 1";
      comment =
      "Acude a un especialista y Comienza a Ejercitarte";
      images = "assets/images/obesidad1.png";
    } else if (bmi <= 40) {
      result = "Estás con Obesidad tipo 2";
      comment = "Preocupante, acude a un especialista";
      images = "assets/images/obesidad2.jpg";
    } else {
      result = "Estás con Obesidad tipo 3";
      comment =
      "Estado Muy preocupante, Urgente acude a un especialista ";
      images = "assets/images/obesidad3.png";
    }

    setState(() {});
  }


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
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),



            Slider(
              value: height,
              min: 50,
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
              min: 50,
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
                onPressed: () {
                  calculate();

                  BMICalculate bmicalculate = BMICalculate(height, weight);

                  print(bmicalculate.getBMI());
                  print(bmicalculate.getResult());
                 // bmicalculate.
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              result,
              style: TextStyle(
                color: Color(0xff38b000),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              comment,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
              ),
            ),
            Expanded(
              child: Image.asset(
                images,
                // "assets/images/normal.png",
                //height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
