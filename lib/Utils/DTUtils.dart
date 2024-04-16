import 'dart:convert';
import 'dart:io';

double nLerConsole(String texto) {
  print(texto);
  while (true) {  
    var line = stdin.readLineSync(encoding: utf8) ?? "0.0";
    try {
      return double.parse(line);
    } catch (e) {
      print("Número Inválido. Por favor, insira um número válido.");
    }
  }
}

String cLerConsole(String texto) {
  print(texto);
  while (true) {
    var line = stdin.readLineSync(encoding: utf8);
    try {
      if (line != null && line.isNotEmpty) {
        return line;
      } else {
        print("Entrada inválida. Por favor, tente novamente.");
      }
    } catch (e) {
      print("Digite um Texto Válido");
    }
  }
}