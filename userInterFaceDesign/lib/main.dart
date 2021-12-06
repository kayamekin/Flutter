import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HOMEpage(),
    );
  }
}

class HOMEpage extends StatelessWidget {
  const HOMEpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F6),
      appBar: AppBar(
        backgroundColor: Color(0xffF1F2F6),
        elevation: 0,
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text("MB",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff9CA3B1),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              offset: Offset(2, 2),
                              color: Color(0xff49382C),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mekin Baturalp",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  width: 85,
                  height: 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.message,
                        color: Color(0xff007AFF),
                      ),
                      Text(
                        "Mesaj",
                        style: TextStyle(
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.phone,
                        color: Color(0xff007AFF),
                      ),
                      Text(
                        "ara",
                        style: TextStyle(
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.video_call,
                        color: Color(0xff007AFF),
                      ),
                      Text(
                        "FaceTime",
                        style: TextStyle(
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 80,
                  height: 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.mail,
                        color: Color(0xff007AFF),
                      ),
                      Text(
                        "E-posta",
                        style: TextStyle(
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
                // ------------------------------------------------
              ]),
              //phone
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("cep",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    Text("+90 (505) 000 00 00",
                        style: TextStyle(color: Color(0xff007AFF))),
                  ],
                ),
              ),
              //nots
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(20),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Notlar",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Bir Not Ekleyin.",
                      ),
                    ),
                  ],
                ),
              ),
              // kişi paylaş ekle sil
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(20),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Mesajınız",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mesajınız nedir ?",
                      ),
                    ),
                  ],
                ),
              ),
              // kişi paylaş ekle sil

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                        content: const Text("El sallandı! teşekkürler"),
                        action: SnackBarAction(
                          label: 'Gizle',
                          onPressed: () {},
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('El Salla'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    Icons.format_list_numbered_rtl_outlined,
                  ),
                  Text("Liste",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Arial',
                      )),
                ],
              ),
            ),
            Container(
              width: 60,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                  ),
                  Text(
                    "Rehber",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    Icons.person_add,
                  ),
                  Text("Ekle",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Arial',
                      )),
                ],
              ),
            ),
            Container(
              width: 60,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    Icons.voice_over_off_rounded,
                  ),
                  Text("Engelle",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Arial',
                      )),
                ],
              ),
            ),
            Container(
              width: 60,
              padding: EdgeInsets.all(5),
              height: 60,
              child: Column(
                children: [
                  Icon(
                    Icons.settings_backup_restore_rounded,
                  ),
                  Text("Yenile",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Arial',
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
