import 'package:flutter/foundation.dart';

import '../entities/peaple_entity.dart';

String img =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8Ea9cyIi_U8y7mgzqX1SitKtppQOzlciXA&usqp=CAU';

class PessoaController extends ChangeNotifier {
  Pessoa people = Pessoa('Vinícius', 25, img);

  void setPessoa(String name, int idade) {
    people.nome = name;
    people.idade = idade;
    people.imgProfile = img;
    notifyListeners();
  }
}
