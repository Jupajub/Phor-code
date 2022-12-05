import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RatelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RFlutter Alert by Ratel'),
        ),
        body: PopupDialog(),
      ),
    );
  }
}

class PopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Alert with Custom Image'),
              onPressed: () => _onAlertWithCustomImagePressed(context),
            ),
          ],
        ),
      ),
    );
  }

// Alert custom images
  _onAlertWithCustomImagePressed(context) {
    Alert(
      context: context,
      title: "สำเร็จ",
      desc: "ทำการเปลี่ยนรหัสผ่านสำเร็จแล้ว",
      image: Image.asset("assets/images/Vector.png"),
    ).show();
  }

// Alert custom content
  /*_onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "LOGIN",
        content: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }*/

// Alert without root navigator
  /*_onAlertWithRootNavigator(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
              BottomNavigationBarItem(icon: Icon(Icons.search))
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "We are inside a CupertinoTabView, which has it's own navigator.",
                        style: TextStyle(inherit: false, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      ElevatedButton(
                        child: Text('Alert without Root navigator'),
                        onPressed: () => Alert(
                            context: context,
                            title:
                                "pop() use root navigator ?\n\n* False will pop Alert and stay in CupertinoTabView\n* True will pop Alert and CupertinoTabView",
                            useRootNavigator: false,
                            buttons: [
                              DialogButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(
                                  "false",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              DialogButton(
                                onPressed: () =>
                                    Navigator.of(context, rootNavigator: true)
                                        .pop(),
                                child: Text(
                                  "true",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ]).show(),
                      ),
                      ElevatedButton(
                        child: Text('Alert with Root navigator'),
                        onPressed: () => Alert(
                            context: context,
                            title:
                                "pop() use root navigator ?\n\n* False will pop CupertinoTabView and raise error in the background !\n* True will pop Alert",
                            useRootNavigator: true,
                            buttons: [
                              DialogButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(
                                  "false",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              DialogButton(
                                onPressed: () =>
                                    Navigator.of(context, rootNavigator: true)
                                        .pop(),
                                child: Text(
                                  "true",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ]).show(),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }*/
}
