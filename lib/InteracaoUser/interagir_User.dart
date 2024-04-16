import 'package:imc/Utils/DTUtils.dart';
import 'package:imc/class/pessoa.dart';
import 'package:imc/UtilsIMC/Realizar_Calculo_IMC.dart';
import 'dart:async';

void interagirUsuario(){
  var cNome = cLerConsole("Seja bem vindo! Por favor, digite seu nome: ");  
  var nPeso = nLerConsole("Olá $cNome, por favor, digite seu peso em quilogramas:");   
  var nAltura = nLerConsole("Muito bem, agora por favor, digite sua altura em metros: ");

  Pessoa pessoa = Pessoa(cNome, nAltura.toStringAsFixed(2), nPeso.toStringAsFixed(2));
  print(pessoa);
  var cConfirmarDados = cLerConsole("Os dados inseridos estão corretos?");

  while (cConfirmarDados.toUpperCase() != "SIM") { 
    nPeso = nLerConsole("Por favor digite novamente seu peso em quilogramas: "); 
    nAltura = nLerConsole("Muito bem, digite sua altura em metros: ");
    pessoa = Pessoa(cNome, nAltura.toStringAsFixed(2), nPeso.toStringAsFixed(2));
    print(pessoa);
    cConfirmarDados = cLerConsole("Os dados inseridos estão corretos?"); 
  }
  var cResultadoIMC = venRealizarCalculoIMC(nPeso, nAltura);
  print("Dados Gravado com Sucesso.\n");
  print("Realizando Calculo do IMC...\n");

  Future.delayed(Duration(seconds: 3), () {
    print("Cálculo finalizado!\n");
    print(cResultadoIMC);
  });
}