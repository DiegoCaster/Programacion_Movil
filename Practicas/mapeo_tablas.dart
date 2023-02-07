void main(){
  
  Map <String, dynamic> login = {
    'user': 'Jorge',
    'password' : 'a20',  
  };

  Map <String, dynamic> signUp = {
    'newUser' : 'Luis',
    'gmail' : 'diego@gmail.com',
    'newPassword': '12345',
  };
  
 Map <String, dynamic> addReceta = {
    'Nombre': 'BLOODY MARY',
    'Dificultad' : 'DIFICL',
    'Utensilios' : '.......',
    'Ingredientes' : '.....',
    'Preparación' : '......',
    //'Foto' : '',
  };
  
  Map <String, dynamic> seeReceta = {
    'Nombre': 'BLOODY MARY',
    'Dificultad' : 'DIFICL',
    'Utensilios' : '.......',
    'Ingredientes' : '.....',
    'Preparación' : '......',
    //'Foto' : '',
    'Comentarios' : '......',
  };
  
 
    print(login);
    print(signUp);
    print(addReceta);
    print(seeReceta);
}