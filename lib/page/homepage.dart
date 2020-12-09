import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/controller/homepagecontroller.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final appPageState = useProvider(appPageStateNotifier);

    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Validação de CPF:',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: context.read(appPageStateNotifier).validCpf,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    child: Text(
                      "Prosseguir",
                      style: TextStyle(fontSize: 14),
                    ),
                    color: Colors.grey,
                    textColor: Colors.white,
                    onPressed: appPageState.isValidCPF ? () {} : null,
                  )
                ])),
      ),
    );
  }
}
