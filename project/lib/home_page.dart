import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_page.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pessoaControler = ref.watch(pessoaController);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 138, 138),
      drawer: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            child: Center(
              child: Container(
                width: 190.0,
                height: 190.0,
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
              radius: 120,
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
            const SizedBox(height: 40),
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
