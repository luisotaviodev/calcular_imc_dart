import 'package:imc/UtilsIMC/DTUtilsIMC.dart';

String venRealizarCalculoIMC(double nPeso, double nAltura){
  var resultadoIMC = venCalcularIMC(nPeso, nAltura); 
  var classificacaoIMC = retornaClassificacaoIMC(resultadoIMC);
  var formatarResultadoIMC = resultadoIMC.toStringAsFixed(2);

  return "Seu IMC é de $formatarResultadoIMC e está classificado como $classificacaoIMC.";
}