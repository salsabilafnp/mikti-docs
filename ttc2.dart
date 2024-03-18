import 'dart:io';

// Fahrenheit to Celcius
double fahrenheitToCelcius(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

// Reamur to Celcius
double reamurToCelcius(num reamur) {
  return reamur * 5 / 4;
}

// Kelvin to Celcius
double kelvinToCelcius(num kelvin) {
  return kelvin - 273.15;
}

void main() {
  print('Pilih jenis konversi:');
  print('1. Fahrenheit ke Celcius');
  print('2. Reamur ke Celcius');
  print('3. Kelvin ke Celcius');
  stdout.write('Masukkan pilihan Anda (1/2/3): ');
  String choice = stdin.readLineSync()!;

  double result = 0;

  switch (choice) {
    case '1':
      stdout.write('Masukkan suhu dalam Fahrenheit: ');
      num fahrenheit = num.parse(stdin.readLineSync()!);
      result = fahrenheitToCelcius(fahrenheit);
      print('$fahrenheit derajat Fahrenheit = ${result.toStringAsFixed(2)} derajat Celcius');
      break;
    case '2':
      stdout.write('Masukkan suhu dalam Reamur: ');
      num reamur = num.parse(stdin.readLineSync()!);
      result = reamurToCelcius(reamur);
      print('$reamur derajat Reamur = ${result.toStringAsFixed(2)} derajat Celcius');
      break;
    case '3':
      stdout.write('Masukkan suhu dalam Kelvin: ');
      num kelvin = num.parse(stdin.readLineSync()!);
      result = kelvinToCelcius(kelvin);
      print('$kelvin derajat Kelvin = ${result.toStringAsFixed(2)} derajat Celcius');
      break;
    default:
      print('Pilihan tidak valid');
  }
}
