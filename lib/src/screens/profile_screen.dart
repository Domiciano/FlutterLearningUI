import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                Positioned(
                    bottom: 8,
                    right: 8,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Agregar"))),
                ListView(
                  children: [
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                    Text("Alfa"),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
