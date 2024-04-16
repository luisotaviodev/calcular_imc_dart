double venCalcularIMC(double peso, double altura) => peso / (altura * altura);

String retornaClassificacaoIMC(double resultado){
  var classificacao = "";
  switch(resultado) {
    case < 18.5:
     classificacao = "MAGREZA";
     break;
    case < 24.9: 
      classificacao = "NORMAL";
      break;
    case < 29.5:
     classificacao = "SOBREPESO";
     break;
    case < 39.9: 
      classificacao = "OBESIDADE";
      break;
    case > 40.0: 
      classificacao = "OBESIDADE GRAVE";
      break;
    default:
      classificacao = "Não foi possivel verificar a classificação do seu IMC";
  }
  return classificacao;
}