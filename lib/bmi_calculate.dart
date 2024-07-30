import "dart:math";

class BMICalculate{

  double _height;
  double _weight;

  double _bmi = 0;

  BMICalculate(this._height, this._weight);

  double getBMI(){
    double calculate = _weight / pow(_height/100, 2);
    _bmi = calculate;
    return calculate;
  }

  String getResult(){

    String result = "";

    if (_bmi < 18) {
      result = "Bajo Peso";

    }else if (_bmi <= 25){
      result = "Peso Ideal";

    }else if (_bmi <= 30){
      result = "Estas con SOBRE PESO";

    }else if (_bmi <= 35){
      result = "Estás con Obesidad tipo 1";

    }else if (_bmi <= 40){
      result = "Estás con Obesidad tipo 2";

    }else {
      result = "Estás con Obesidad tipo 3";
    }
    return result;

  }

  String getComment (){
    String comment = "";

    if (_bmi < 18) {
      comment = "Debes alimentarte mejor y hacer Ejercicios";

    }else if (_bmi <= 25){
      comment = "Estás en el Peso Correcto, Sigue Cuidandote";

    }else if (_bmi <= 30){
      comment = "Debes cuidar tu Alimentación y empezar a Ejercitarte";

    }else if (_bmi <= 35){
      comment = "Acude a un especialista y Comienza a Ejercitarte";

    }else if (_bmi <= 40){
      comment = "Preocupante, acude a un especialista";

    }else {
      comment = "Estado Muy preocupante, Urgente acude a un especialista";
    }
    return comment;

  }

  String getImages(){
    String images = "";
    if (_bmi < 18) {
      images = "assets/images/muy delgado.png";

    }else if (_bmi <= 25){
      images = "assets/images/normal.png";

    }else if (_bmi <= 30){
      images = "assets/images/imagen sobrepeso.png";

    }else if (_bmi <= 35){
      images = "assets/images/obesidad1.png";

    }else if (_bmi <= 40){
      images = "assets/images/obesidad2.jpg";

    }else {
      images = "assets/images/obesidad3.png";
    }
    return images;

  }

  }











