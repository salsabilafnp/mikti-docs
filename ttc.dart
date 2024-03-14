import 'dart:io';

void main() {
  stdout.write("Nama Anda: ");
  String? name = stdin.readLineSync();
  stdout.write("Jurusan Anda: ");
  String? jurusan = stdin.readLineSync();

  print("Halo $name, mahasiswa $jurusan!");
}
