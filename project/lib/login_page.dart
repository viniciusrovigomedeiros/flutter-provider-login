import 'package:flutter/material.dart';
import 'package:project/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/peaple_controller.dart';

final pessoaController = ChangeNotifierProvider(
  (ref) => PessoaController(),
);

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _controlerName = TextEditingController();
  final TextEditingController _controlerIdade = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pessoaControler = ref.watch(pessoaController);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              NetworkImage(pessoaControler.people.imgProfile))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _controlerName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _controlerIdade,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                pessoaControler.people.nome = _controlerName.text;
                pessoaControler.people.idade = int.parse(_controlerIdade.text);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => HomePage()),
                ));
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
