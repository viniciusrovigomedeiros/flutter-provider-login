import 'package:flutter/material.dart';
import 'package:project/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/peaple_controller.dart';

final pessoaController = ChangeNotifierProvider(
  (ref) => PessoaController(),
);

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pessoaControler = ref.watch(pessoaController);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de login'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 100,
            child: Image.network(pessoaControler.people.imgProfile,
                fit: BoxFit.contain),
          ),
          Column(
            children: [
              Text(
                  'Nome ${pessoaControler.people.nome}, Idade: ${pessoaControler.people.idade}'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => HomePage()),
              ));
            },
            child: const Text('Cadastrar'),
          ),
        ],
      ),
    );
  }
}
