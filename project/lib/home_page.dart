import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_page.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pessoaControler = ref.watch(pessoaController);
    return Scaffold(
      backgroundColor: Colors.amber,
      drawer: Column(
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.network(pessoaControler.people.imgProfile,
                fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Nome:',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    pessoaControler.people.nome,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Idade:',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    '${pessoaControler.people.idade}',
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Center(child: Text('Home page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: Image.network(pessoaControler.people.imgProfile,
                  fit: BoxFit.contain),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text(
                      'Nome:',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      pessoaControler.people.nome,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text(
                      'Idade:',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '${pessoaControler.people.idade}',
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
