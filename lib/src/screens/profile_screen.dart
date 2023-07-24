import 'package:flutter/material.dart';
import 'package:ui_learning/src/blocs/contact_bloc.dart';
import 'package:ui_learning/src/dialog/number_dialog.dart';

import '../blocs/auth_bloc.dart';
import '../items/contact_list_item.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ContactBloc _contactBloc = ContactBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 16),
          //CircleAvatar is helpful too
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                color: Colors.redAccent,
                border: Border.all(color: Colors.black, width: 0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://media.gq.com/photos/645956c367d4264086a5d77f/16:9/w_2352,h_1323,c_limit/Screen%20Shot%202023-05-08%20at%204.07.48%20PM.png',
                    ))),
          ),
          Text('Robert Oppenheimer',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          Expanded(
              child: Container(
            width: double.infinity,
            child: Stack(
              children: [
                StreamBuilder(
                    stream: _contactBloc.contactListStream,
                    builder: (context, snap) {
                      if (snap.data != null) {
                        var data = snap.data!;
                        if (data.isNotEmpty) {
                          return ListView.builder(
                              itemCount: data.length,
                              prototypeItem:
                                  const ContactListItem(name: "", number: ""),
                              itemBuilder: (context, index) {
                                return ContactListItem(
                                  name: data[index].name,
                                  number: data[index].number,
                                );
                              });
                        } else {
                          return Text("Hay no hay datos");
                        }
                      } else {
                        return Text("Loading");
                      }
                    }),
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: ElevatedButton(
                        onPressed: () {
                          show(context);
                        },
                        child: Text("Agregar"))),
              ],
            ),
          ))
        ],
      ),
    );
  }

  void show(context) {
    showDialog(
        context: context,
        builder: (context) {
          return NumberDialog(bloc: _contactBloc);
        });
  }
}
