import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(83, 183, 87, 69),
            child: SizedBox(
              width: 205,
              height: 187,
              child: Image.asset("assets/images/image 2.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
            child: Container(
              width: 630,
              height: 45,
              child: const TextField(
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: 14, fontFamily: "NotoSansThai"),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "00420",
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 50, 13, 50),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                              width: 3,
                              color: Color.fromARGB(0, 255, 255, 255))))),
                  child: Text(
                    "ถัดไป",
                    style: TextStyle(fontSize: 16, fontFamily: "NotoSansThai"),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
