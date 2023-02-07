void main() {
  final nombre = 'Diego';
  
  //saludar(nombre, 'Greetings');
  saludar2(nombre: nombre, mensaje: 'Greetings');
}

void saludar(String x, [String mensaje = 'Hi']){
  print('$mensaje $x');
}

void saludar2({
  required String nombre,
  required String mensaje
}){
  print('$mensaje $nombre');
}
