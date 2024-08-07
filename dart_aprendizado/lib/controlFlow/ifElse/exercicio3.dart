// Exercício 03
//
// Escreva um programa que converta a temperatura de Fahrenheit para Celsius e
// Celsius para Fahrenheit
//
// A fórmula básica para converter Fahrenheit e Celsius entre si.
// Celsius para Fahrenheit: (°C × 9/5) + 32 = °F
// Fahrenheit para Celsius: (°F − 32) x 5/9 = °C

double temperatureConverter(int temperature, String unit) {
  if (unit == "C" || unit == "c") {
    return (temperature * (9 / 5) + 32).roundToDouble();
  } else {
    return ((temperature - 32) * (5 / 9)).roundToDouble();
  }
}

void main(List<String> args) {
  print(temperatureConverter(28, "c"));
}
