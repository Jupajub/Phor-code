import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/popup.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class NewpasswordScreen extends StatefulWidget {
  const NewpasswordScreen({super.key});

  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {
  bool suffixIcon = true;
  bool suffixIcon1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(140, 76, 50, 40),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Text(
                    "เปลี่ยนรหัสผ่าน",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NotoSansThai"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.5, 59.5, 150, 10),
              child: SizedBox(
                child: Text("รหัสผ่านใหม่",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NotoSansThai")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.5, 10, 22.5, 15),
              child: TextFormField(
                  obscureText: suffixIcon,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.remove_red_eye_outlined),
                      onTap: () {
                        setState(() {
                          suffixIcon = suffixIcon ? false : true;
                        });
                      },
                    ),
                    hintText: "********",
                    filled: true, //<-- SEE HERE
                    fillColor:
                        Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.5, 15, 150, 10),
              child: SizedBox(
                child: Text("ยืนยันรหัสผ่าน",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NotoSansThai")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.5, 10, 22.5, 10),
              child: TextFormField(
                  obscureText: suffixIcon1,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.remove_red_eye_outlined),
                      onTap: () {
                        setState(() {
                          suffixIcon1 = suffixIcon1 ? false : true;
                        });
                      },
                    ),
                    hintText: "********",
                    filled: true, //<-- SEE HERE
                    fillColor:
                        Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.5, 10, 130.5, 33),
              child: SizedBox(
                child: Text(
                  "รหัสผ่านต้องมีความยาว 8-20 ตัวอักษร",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[350],
                      fontFamily: "NotoSansThai"),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                    child: Text(
                      "ดำเนินการต่อ",
                      style:
                          TextStyle(fontSize: 16, fontFamily: "NotoSansThai"),
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return PopupDialog();
                      // }));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(child: Text("สำเร็จ")),
                              titleTextStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai",
                                  color: Colors.blue[300]),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("ทำการเปลี่ยนรหัสผ่านสำเร็จแล้ว"),
                                  Image.asset("assets/images/verify.png")
                                ],
                              ),
                              actions: [
                                Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return HomeScreen();
                                        }), (route) => false);
                                        // Navigator.push(context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) {
                                        //   return HomeScreen();
                                        // }));
                                      },
                                      child: Text("ตกลง")),
                                )
                              ],
                            );
                          });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_onAlertWithCustomImagePressed(context) {
  Alert(
    context: context,
    title: "สำเร็จ",
    desc: "ทำการเปลี่ยนรหัสผ่านสำเร็จแล้ว",
    //image: Image.asset("assets/success.png"),
  ).show();
}
