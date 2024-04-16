  class Pessoa {
  String _cNome = "";
  String _cAltura = "";
  String _cPeso = "";

  void setNome(String cNome) {
    _cNome = cNome;
  }

  String getNome() {
    return _cNome;
  }

  void setAltura(String cAltura) {
    _cAltura = cAltura;
  }

  String getAltura() {
    return _cAltura;
  }

  void setPeso(String cPeso) {
    _cPeso = cPeso;
  }

  String getPeso() {
    return _cPeso;
  }

  Pessoa(String cNome, String cAltura, String cPeso) {
    _cNome   = cNome;
    _cAltura = cAltura;
    _cPeso   = cPeso;
  }

  @override
  String toString() {
    return {"Nome": _cNome, "Altura": _cAltura, "Peso": _cPeso,}.toString();
  }
}