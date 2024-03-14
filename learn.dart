import 'dart:io';

void main() {
  stdout.write("What's your name?");
  String? name = stdin.readLineSync();

  print(name);
}
