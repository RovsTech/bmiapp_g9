import "dart:math";

class BMICalculate{

  double height;
  double weight;

  BMICalculate({required this.height, required this.weight});

  double getBMI(){
    double bmi = weight / pow(height/100, 2);
    return bmi;
  }

  String getResult(){
    double bmi = getBMI();
    String result = "";
    String comment = "";


    if (bmi < 18) {
      result = "Bajo Peso";
      comment = "Debes alimentarte mejor y hacer Ejercicios";
    }else if (bmi <= 25){
      result = "Peso Ideal";

    }else if (bmi <= 30){
      result = "Estas con SOBRE PESO";

    }else if (bmi <= 35){
      result = "Estás con Obesidad tipo 1";

    }else if (bmi <= 40){
      result = "Estás con Obesidad tipo 2";

    }else {
      result = "Estás con Obesidad tipo 3";
    }
    return result;

  }



}