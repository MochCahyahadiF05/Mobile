import 'package:flutter/material.dart';
import 'package:service/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController kelasController = TextEditingController();
  TextEditingController jurusanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Prakerin 2022"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.lightBlueAccent])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
                child: Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.black12, Colors.black26])),
                  child: Center(
                    child: Text(
                      "Formulir",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Lengkap",
                    hintText: 'Input Nama',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  controller: kelasController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Kelas",
                      hintText: 'Input Kelas',
                      fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  controller: jurusanController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Jurusan",
                      hintText: 'Input Jurusan',
                      fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: GestureDetector(
                  onTap: () {
                    String name = nameController.text;
                    String kelas = kelasController.text;
                    String jurusan =jurusanController.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfileScreen(name: name, kelas: kelas,jurusan: jurusan)));
                  },
                  child: Container(
                    width: 240,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black26])),
                    child: Center(
                      child: Text(
                        "Input",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}