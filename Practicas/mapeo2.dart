void main() {
  Map <String, dynamic> persona = {
    'nombre': 'Diego',
    'edad': 24,
    'soltero': true,
  };
  
  persona.addAll({'segundoNombre': 'Manuel'});
  
  print(persona);
}
