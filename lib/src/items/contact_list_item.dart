import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget{

  const ContactListItem({super.key, required this.name, required this.number});

  final String name;
  final String number;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18)),
            Text(number, style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12)),
          ],
        ),
      ),
      elevation: 8,
    );
  }

}