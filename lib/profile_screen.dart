import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name, kelas, jurusan;
  ProfileScreen({Key? key, required this.name, required this.kelas, required this.jurusan})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Prakerin 2022"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Nama : " + name),
              Text("Kelas : " + kelas),
              Text("Jurusan : " + jurusan),
            ]),
          ],
        ),
      ),
    );
  }
}