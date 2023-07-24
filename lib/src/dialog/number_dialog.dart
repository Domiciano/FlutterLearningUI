import 'package:flutter/material.dart';
import 'package:ui_learning/src/blocs/contact_bloc.dart';

class NumberDialog extends StatelessWidget {
  
  const NumberDialog({super.key, required this.bloc});

  final ContactBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min, //Para que no quede largo
            children: [
              const Text('Nuevo número'),
              TextField(decoration: InputDecoration(hintText: 'Nombre'), onChanged: (value) {
                bloc.setName(value);  
              }),
              TextField(decoration: InputDecoration(hintText: 'Número'), onChanged: (value) {
                bloc.setPhone(value);  
              }),
              ElevatedButton(
                  onPressed: () {
                    bloc.addContact();
                    bloc.restoreCurrentSubject();
                    Navigator.pop(context);
                  },
                  child: const Text('Agregar'))
            ],
          ),
        ));
  }
}
