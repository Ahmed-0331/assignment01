void main(){
  double weight = 70.0;
  double height = 1.73;
  double bmi = BMICalculate( weight, height );
  String category = getBMICategory(bmi);
  print("Your BMI is:");
  print(bmi);
  print("Category:");
  print(category);

}

String getBMICategory(double bmi){
  if (bmi < 18.5 ){
    return 'Underweight';
  }else if (bmi >= 18.5 && bmi <= 24.9){
    return 'Normal';
  }else if ( bmi >= 25 && bmi <= 29.9){
    return 'Overweight';
  } else {
    return 'Obese';
  }
}
double BMICalculate(double weight , double height){
  double bmi = weight / (height * height);
  return bmi;
}